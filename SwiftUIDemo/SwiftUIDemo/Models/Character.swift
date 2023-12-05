//
//  Character.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation
import SwiftUI

struct Character: Decodable, Hashable, Identifiable {
    var id: Int64
    var name: String
    var status: String?
    var gender: String?
    var image: String?
}
