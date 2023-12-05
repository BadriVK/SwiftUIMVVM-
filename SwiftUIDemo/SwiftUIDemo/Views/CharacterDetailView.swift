//
//  CharacterDetailView.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import SwiftUI

struct CharacterDetailView: View {
    @ObservedObject var viewModel: CharacterDetailViewModel
    
    var body: some View {
        VStack{
            AsyncImage(
                url: URL(string: viewModel.character.image ?? ""),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 150, maxHeight: 150)
                        .mask(RoundedRectangle(cornerRadius: 12))

                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(viewModel.character.name)
            Text(viewModel.character.gender ?? "")
            if viewModel.character.status == "Alive" {
                Text(viewModel.character.status ?? "")
                    .foregroundColor(.green)
            } else {
                Text(viewModel.character.status ?? "")
                    .foregroundColor(.red)
            }
        }
    }
}

struct CharacterDetailView_Previews : PreviewProvider {
    static var previews: some View {
        CharacterDetailView(viewModel: .init(character: Character(id: 1, name: "Foo")))
    }
}
