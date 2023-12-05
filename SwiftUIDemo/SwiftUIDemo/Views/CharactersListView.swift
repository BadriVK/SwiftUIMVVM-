//
//  CharactersListView.swift
//  SwiftUIDemo
//
//  Created by Apple on 30/11/23.
//

import SwiftUI

struct CharactersListView: View {
    @ObservedObject var viewModel: CharacterListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.characters) { character in
                CharacterListRow(character: character)
            }
            .alert(isPresented: $viewModel.isErrorShown, content: { () -> Alert in
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage))
            })
            .navigationBarTitle(Text("Characters"))
        }
        .onAppear(perform: { self.viewModel.apply(.onAppear) })
    }
}

struct CharactersListView_Previews : PreviewProvider {
    static var previews: some View {
        CharactersListView(viewModel: .init())
    }
}
