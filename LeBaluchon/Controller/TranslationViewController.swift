//
//  TranslationViewController.swift
//  LeBaluchon
//
//  Created by Romain Buewaert on 26/07/2021.
//

import UIKit

final class TranslationViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var languageToTranslateLabel: UILabel!
    @IBOutlet weak var languageToObtainLabel: UILabel!
    @IBOutlet weak var textToTranslateTextView: UITextView!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var translateButton: UIButton!
    @IBOutlet weak var reverseButton: UIButton!

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.tabBarController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit,
                                            target: self, action: #selector(launchParametersViewController))
        self.tabBarController?.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh,
                                            target: self, action: #selector(updateCurrentViewController))

        translateButton.layer.cornerRadius = 30
        reverseButton.layer.cornerRadius = 15

        let toolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 30))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBtn: UIBarButtonItem = UIBarButtonItem(
                title: "Done", style: .done, target: self, action: #selector(dismissMyKeyboard))
        toolbar.setItems([flexSpace, doneBtn], animated: false)
        toolbar.sizeToFit()
        self.textToTranslateTextView.inputAccessoryView = toolbar
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        TranslationService.shared.getTranslation(
            textToTranslate: SelectedParameters.selectedTranslation.textToTranslate,
                    languageToTranslate: SelectedParameters.selectedTranslation.languageToTranslate,
                    languageToObtain: SelectedParameters.selectedTranslation.languageToObtain) { success, translation in

            if success, let currentTranslation = translation {
                SelectedParameters.selectedTranslation = currentTranslation
                self.updateTranslationView(translation: currentTranslation)
            } else {
                self.alertErrorMessage(message: ErrorType.downloadFailed.rawValue)
            }
        }
    }

    // MARK: - Actions
    @IBAction func tappedReverseButton(_ sender: Any) {
        let copyStructTranslation = SelectedParameters.selectedTranslation

        SelectedParameters.selectedTranslation.textToTranslate = copyStructTranslation.textToObtain
        SelectedParameters.selectedTranslation.textToObtain = copyStructTranslation.textToTranslate
        SelectedParameters.selectedLanguageToObtain = copyStructTranslation.languageToTranslate
        SelectedParameters.selectedLanguageToTranslate = copyStructTranslation.languageToObtain
        SelectedParameters.selectedTranslation.languageToTranslate = copyStructTranslation.languageToObtain
        SelectedParameters.selectedTranslation.languageToObtain = copyStructTranslation.languageToTranslate

        languageToTranslateLabel.text = Lists.languageList[SelectedParameters.selectedTranslation.languageToTranslate]
        languageToObtainLabel.text = Lists.languageList[SelectedParameters.selectedTranslation.languageToObtain]

        textToTranslateTextView.text = SelectedParameters.selectedTranslation.textToTranslate
        resultTextView.text = SelectedParameters.selectedTranslation.textToObtain
        print(copyStructTranslation)
        print(SelectedParameters.selectedTranslation)
    }

    @IBAction func tappedTranslateButton(_ sender: Any) {
        guard let textToTranslate = textToTranslateTextView.text else { return}
        print(textToTranslate)

        toggleActivityIndicator(shown: true)

        TranslationService.shared.getTranslation(
            textToTranslate: textToTranslate,
            languageToTranslate: SelectedParameters.selectedTranslation.languageToTranslate,
            languageToObtain: SelectedParameters.selectedTranslation.languageToObtain) { success, translation in
            if success, let currentTranslation = translation {
                SelectedParameters.selectedTranslation = currentTranslation
                self.toggleActivityIndicator(shown: false)
                self.resultTextView.text = currentTranslation.textToObtain
            } else {
                self.toggleActivityIndicator(shown: false)
                self.alertErrorMessage(message: ErrorType.downloadFailed.rawValue)
            }
        }
    }

    // MARK: - Private Methods
    private func updateTranslationView(translation: Translation) {
        languageToTranslateLabel.text = Lists.languageList[translation.languageToTranslate]
        languageToObtainLabel.text = Lists.languageList[translation.languageToObtain]
        textToTranslateTextView.text = translation.textToTranslate
        resultTextView.text = translation.textToObtain
    }

    private func toggleActivityIndicator(shown: Bool) {
        activityIndicator.isHidden = !shown
        translateButton.isHidden = shown
        reverseButton.isHidden = shown
    }

    // MARK: - UIAlertController
    private func alertErrorMessage(message: String) {
        let alertVC = UIAlertController(title: "Error!", message: message,
                                        preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alertVC, animated: true, completion: nil)
    }
}

// MARK: - keyboard for UItextView
extension TranslationViewController {
    @objc private func dismissMyKeyboard() {
        view.endEditing(true)
    }
}

// MARK: - Methods for NavigationItem Buttons
extension TranslationViewController {
    @objc func launchParametersViewController() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let parametersViewController = storyBoard.instantiateViewController(
                withIdentifier: "Parameters") as? ParametersViewController else { return}
        self.present(parametersViewController, animated: true, completion: nil)
    }

    @objc func updateCurrentViewController() {
        updateTranslationView(translation: SelectedParameters.selectedTranslation)
    }
}
