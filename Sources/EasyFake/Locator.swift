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

    public var wrappedValue: String {
        get {
            Loader.shared.load(file: file)
        }
    }
}
