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
    public let animal = Animal()
    public let name = Name()
}

public extension Fake {
    struct Address {
        @Locator(file: "address-building_number", transformer: .digit)
        public var buildingNumber: String

        @Locator(file: "address-city_name")
        public var cityName: String

        @Locator(file: "address-city_prefix")
        public var cityPrefix: String

        @Locator(file: "address-city_suffix")
        public var citySuffix: String

        @Locator(file: "address-country")
        public var country: String

        @Locator(file: "address-country_code")
        public var countryCode: String

        @Locator(file: "address-country_code_alpha_3")
        public var countryCodeAlpha3: String

        @Locator(file: "address-county")
        public var county: String

        @Locator(file: "address-default_country")
        public var defaultCountry: String

        @Locator(file: "address-direction")
        public var direction: String

        @Locator(file: "address-direction_abbr")
        public var directionAbbr: String

        @Locator(file: "address-direction_postcode", transformer: .digit)
        public var postCode: String

        @Locator(file: "address-direction_postcode_by_state", transformer: .digit)
        public var postCodeByState: String

        @Locator(file: "address-secondary_address", transformer: .digit)
        public var secondaryAddress: String

        @Locator(file: "address-state_abbr")
        public var state: String

        @Locator(file: "address-state_abbr")
        public var stateAbbr: String

        @Locator(file: "address-street_suffix")
        public var streetSuffix: String

        @Locator(file: "address-time_zone")
        public var timeZone: String
    }

    struct Animal {
        @Locator(file: "animal-bear")
        public var bear: String

        @Locator(file: "animal-bird")
        public var bird: String

        @Locator(file: "animal-cat")
        public var cat: String

        @Locator(file: "animal-cetacean")
        public var cetacean: String

        @Locator(file: "animal-cow")
        public var cow: String

        @Locator(file: "animal-crocodilia")
        public var crocodilia: String

        @Locator(file: "animal-dog")
        public var dog: String

        @Locator(file: "animal-fish")
        public var fish: String

        @Locator(file: "animal-horse")
        public var horse: String

        @Locator(file: "animal-insect")
        public var insect: String

        @Locator(file: "animal-lion")
        public var lion: String

        @Locator(file: "animal-rabbit")
        public var rabbit: String

        @Locator(file: "animal-snake")
        public var snake: String

        @Locator(file: "animal-type")
        public var type: String
    }

    struct Name {
        @Locator(file: "name-last_name") public var lastName: String
    }
}
