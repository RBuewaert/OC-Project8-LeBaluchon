//
//  ErrorType.swift
//  LeBaluchon
//
//  Created by Romain Buewaert on 26/07/2021.
//

import Foundation

enum ErrorType: String, Error {
    case userValueIsIncorrect = "Please enter a correct value"
    case firstCurrencyIsIncorrect = """
The first currency was not found,
please contact us to update application
"""
    case secondCurrencyIsIncorrect = """
The second currency was not found,
please contact us to update application
"""
    case cityNotFound = "City not found, please enter another city"
    case noValue = "Please enter a value before validating"
    case downloadFailed = "The download failed"
}
