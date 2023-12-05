//
//  ExperimentService.swift
//  SwiftUIDemo
//
//  Created by Apple on 01/12/23.
//

import Foundation

enum ExperimentKey: String {
    case showIcon
}

protocol ExperimentServiceType {
    func experiment(for key: ExperimentKey) -> Bool
}

final class ExperimentService: ExperimentServiceType {
    func experiment(for key: ExperimentKey) -> Bool {
        // call api to get variant for the key
        return true
    }
}
