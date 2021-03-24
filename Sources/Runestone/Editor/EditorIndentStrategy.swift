//
//  EditorIndentStrategy.swift
//  
//
//  Created by Simon Støvring on 07/03/2021.
//

import Foundation

public enum EditorIndentStrategy: Equatable {
    case tab(length: Int)
    case space(length: Int)
}

extension EditorIndentStrategy {
    var tabLength: Int {
        switch self {
        case .tab(let length):
            return length
        case .space(let length):
            return length
        }
    }
    
    func string(indentLevel: Int) -> String {
        switch self {
        case .tab:
            return String(repeating: Symbol.Character.tab, count: indentLevel)
        case .space(let length):
            return String(repeating: Symbol.Character.space, count: length * indentLevel)
        }
    }
}