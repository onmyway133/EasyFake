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
