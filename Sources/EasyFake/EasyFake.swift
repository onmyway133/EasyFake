//
//  EasyFake.swift
//  EasyFake
//
//  Created by khoa
//

import Foundation

public struct Fake {
    public static var locale: String = "en"

    public init() {}

    public let address = Address()
    public let name = Name()
}

public extension Fake {
    struct Address {
        @Locator(file: "address-city_name") public var cityName: String
        @Locator(file: "address-country") public var country: String
    }

    struct Name {
        @Locator(file: "name-last_name") public var lastName: String
    }
}
