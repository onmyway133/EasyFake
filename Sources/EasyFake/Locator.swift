//
//  Locator.swift
//  
//
//  Created by khoa on 10/08/2021.
//

import Foundation

@propertyWrapper
public struct Locator {
    let file: String
    var transformer: Transformer = .none

    public var wrappedValue: String {
        get {
            let string = Loader.shared.load(file: file)
            return transformer.transform(string)
        }
    }
}

public struct Transformer {
    let transform: (String) -> String

    static let none = Transformer(transform: { $0 })
    static let digit = Transformer(transform: { string in
        string
            .map { c in
                guard c == "#" else { return String(c) }
                let number = Int.random(in: 0 ... 9)
                return "\(number)"
            }
            .joined()
    })
}
