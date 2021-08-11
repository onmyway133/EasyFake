//
//  Transformer.swift
//  EasyFake
//
//  Created by khoa on 11/08/2021.
//

import Foundation

public struct Transformer {
    let transform: (String) -> String

    public init(transform: @escaping (String) -> String) {
        self.transform = transform
    }

    public static let none = Transformer(transform: { $0 })

    public static let digit = Transformer(transform: { string in
        string.replacingHash()
    })

    public static let creditCard = Transformer(transform: { string in
        string
            .replacingRegexSquareBrackets()
            .replacingRegexCurlyBraces()
            .replacingHash()
    })

    public static let tbd = Transformer(transform: { $0 })
}
