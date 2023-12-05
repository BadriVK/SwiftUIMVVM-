//
//  CharacterDetailViewModel.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation
import SwiftUI
import Combine

class CharacterDetailViewModel: ObservableObject {
    let objectWillChange: AnyPublisher<CharacterListViewModel, Never>
    let objectWillChangeSubject = PassthroughSubject<CharacterListViewModel, Never>()
    
    let character: Character
    
    init(character: Character) {
        objectWillChange = objectWillChangeSubject.eraseToAnyPublisher()
        self.character = character
    }
}
