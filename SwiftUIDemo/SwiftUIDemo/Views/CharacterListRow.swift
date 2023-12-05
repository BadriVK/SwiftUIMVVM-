//
//  CharacterListRow.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import SwiftUI

struct CharacterListRow: View {
    
    @State var character: Character

    var body: some View {
        NavigationLink(destination: CharacterDetailView(viewModel: .init(character: character))) {
            HStack {
                AsyncImage(
                    url: URL(string: character.image ?? ""),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 35, maxHeight: 35)
                            .mask(RoundedRectangle(cornerRadius: 6))

                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                Spacer()
                VStack {
                    Text(character.name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(character.gender ?? "")
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
        }
    }
}

struct CharacterListRow_Previews : PreviewProvider {
    static var previews: some View {
        CharacterListRow(character: Character(id: 1, name: "Badri", gender: "male"))
    }
}
