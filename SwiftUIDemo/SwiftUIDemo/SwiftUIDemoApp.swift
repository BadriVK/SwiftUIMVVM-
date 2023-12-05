//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Apple on 30/11/23.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            CharactersListView(viewModel: .init())
        }
    }
}
