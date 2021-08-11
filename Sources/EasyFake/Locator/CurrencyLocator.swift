//
//  CurrencyLocator.swift
//  EasyFake
//
//  Created by khoa on 11/08/2021.
//

import Foundation

public struct Currency {
    public let name: String
    public let code: String
    public let symbol: String
}


@propertyWrapper
public struct CurrencyLocator {
    let file: String

    public var wrappedValue: Currency? {
        get {
            nil
        }
    }
}
