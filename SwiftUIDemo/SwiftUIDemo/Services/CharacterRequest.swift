//
//  CharacterRequest.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation

struct CharacterRequest: APIRequestType {
    typealias Response = CharacterResponse
    
    var path: String { return "/search/repositories" }
    var queryItems: [URLQueryItem]? {
        return [
            .init(name: "q", value: "SwiftUI"),
            .init(name: "order", value: "desc")
        ]
    }
}
