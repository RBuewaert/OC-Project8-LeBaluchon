//
//  FakeResponseData.swift
//  LeBaluchonTests
//
//  Created by Romain Buewaert on 26/07/2021.
//

import Foundation

class FakeResponseData {
    // MARK: - Correct Data For Exchange Rate
        static var currencyCorrectData: Data? {
            let bundle = Bundle(for: FakeResponseData.self)
            let url = bundle.url(forResource: "ExchangeRate", withExtension: "json")!
            do {
                return try Data(contentsOf: url)
            } catch {
                print(error.localizedDescription)
            }
            return nil
        }

    // MARK: - Correct Data For Weather
        static var weatherGroupCorrectData: Data? {
            let bundle = Bundle(for: FakeResponseData.self)
            let url = bundle.url(forResource: "WeatherGroup", withExtension: "json")!
            do {
                return try Data(contentsOf: url)
            } catch {
                print(error.localizedDescription)
            }
            return nil
        }

    static var weatherCityCorrectData: Data? {
        let bundle = Bundle(for: FakeResponseData.self)
        let url = bundle.url(forResource: "WeatherCity", withExtension: "json")!
        do {
            return try Data(contentsOf: url)
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }

    // MARK: - Correct Data For Translation
    static var translationCorrectData: Data? {
        let bundle = Bundle(for: FakeResponseData.self)
        let url = bundle.url(forResource: "Translation", withExtension: "json")!
        do {
            return try Data(contentsOf: url)
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }

    // MARK: - Incorrect Data For Exchange Rate, Weather and Translation
        static let incorrectData = "erreur".data(using: .utf8)!

    // MARK: - Response
        static let responseOK = HTTPURLResponse(
            url: URL(string: "https://openclassrooms.com")!,
            statusCode: 200, httpVersion: nil, headerFields: [:])!

        static let responseKO = HTTPURLResponse(
            url: URL(string: "https://openclassrooms.com")!,
            statusCode: 500, httpVersion: nil, headerFields: [:])!

        static let responseKOCode404 = HTTPURLResponse(
            url: URL(string: "https://openclassrooms.com")!,
            statusCode: 404, httpVersion: nil, headerFields: [:])!

    // MARK: - Error
        class ErrorRequest: Error {}
        static let error = ErrorRequest()
}
