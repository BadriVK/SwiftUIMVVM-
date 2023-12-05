//
//  APIServiceError.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation

enum APIServiceError: Error {
    case responseError
    case parseError(Error)
}

