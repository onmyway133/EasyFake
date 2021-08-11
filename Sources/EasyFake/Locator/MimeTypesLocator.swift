//
//  MimeTypesLocator.swift
//  EasyFake
//
//  Created by khoa on 11/08/2021.
//

import Foundation

public struct MimeType {
    public let name: String
    public let source: String
    public let compressible: Bool?
    public let extensions: [String]?
    public let charset: String?
}

@propertyWrapper
public struct MimeTypeLocator {
    let file: String

    public var wrappedValue: MimeType? {
        get {
            nil
        }
    }
}
