//
//  NetworkError.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
enum NetworkError: Error {
    var message: String {
        switch self {
        case .networkError(let networkMessage):
            return networkMessage
        default:
            return "Something went wrong"
        }
    }
    
    case networkError(message: String)
    case other
}
