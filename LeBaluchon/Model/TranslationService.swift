//
//  TranslationService.swift
//  LeBaluchon
//
//  Created by Romain Buewaert on 23/08/2021.
//

import Foundation

final class TranslationService {
    // MARK: - Pattern Singleton
    static var shared = TranslationService()

    // MARK: - Dependency injection
    private var task: URLSessionDataTask?
    private var translationSession = URLSession(configuration: .default)

    init(translationSession: URLSession = URLSession.shared) {
        self.translationSession = translationSession
    }

    // MARK: - Url
    private static let baseTranslationUrl = "https://translation.googleapis.com/language/translate/v2?q="

    // MARK: - Request
    func getTranslation(textToTranslate: String, languageToTranslate: String,
                        languageToObtain: String, callback: @escaping (Bool, Translation?) -> Void) {
        let languageSource = "&source=" + languageToTranslate
        let languageTarget = "&target=" + languageToObtain
        let urlParameters = languageSource + languageTarget + "&key=" + keyGoogleTranslate

        guard let url = URL(string: TranslationService.baseTranslationUrl +
                        textToTranslate.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                        + urlParameters) else {
            callback(false, nil)
            return
        }

        task?.cancel()
        task = translationSession.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    callback(false, nil)
                    return
                }
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    callback(false, nil)
                    return
                }
                // Extract property indicated in Struct TranslationResult
                guard let result = try? JSONDecoder().decode(TranslationResult.self, from: data) else {
                    return callback(false, nil)
                }

                let translation = Translation(languageToTranslate: SelectedParameters.selectedLanguageToTranslate,
                                              languageToObtain: SelectedParameters.selectedLanguageToObtain,
                                              textToTranslate: textToTranslate,
                                              textToObtain: result.data.translations[0].translatedText)
                callback(true, translation)
            }
        }
        task?.resume()
    }
}
