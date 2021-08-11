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
        string
            .map { c in
                guard c == "#" else { return String(c) }
                let number = Int.random(in: 0 ... 9)
                return "\(number)"
            }
            .joined()
    })

    public static let regex = Transformer(transform: { $0 })
    public static let sub = Transformer(transform: { $0 })
}
