//
//  UnidirectionalDataFlowType.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation

protocol UnidirectionalDataFlowType {
    associatedtype InputType
    
    func apply(_ input: InputType)
}

