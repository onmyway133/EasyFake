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
    public let app = App()
    public let business = Business()
    public let cellPhone = CellPhone()
    public let commerce = Commerce()
    public let company = Company()
    public let database = Database()
    public let date = Date()
    public let finance = Finance()
    public let hacker = Hacker()
    public let internet = Internet()
    public let lorem = Lorem()
    public let music = Music()
    public let name = Name()
    public let phoneNumber = PhoneNumber()
    public let system = System()
    public let team = Team()
    public let vehicle = Vehicle()
    public let word = Word()
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

    struct App {
        @Locator(file: "app-name")
        public var name: String

        @Locator(file: "app-version", transformer: .digit)
        public var version: String
    }

    struct Business {
        @Locator(file: "business-credit_card_expiry_dates")
        public var creditCardExpiryDate: String

        @Locator(file: "business-credit_card_numbers")
        public var creditCardNumbe: String

        @Locator(file: "business-credit_card_types")
        public var creditCardType: String
    }

    struct CellPhone {
        @Locator(file: "cell_phone-formats", transformer: .digit)
        public var format: String
    }

    struct Commerce {
        @Locator(file: "commerce-color")
        public var color: String

        @Locator(file: "commerce-department")
        public var department: String

        @Locator(file: "commerce-product_description")
        public var productDescription: String

        @Locator(file: "commerce-product_name")
        public var name: String
    }

    struct Company {
        @Locator(file: "company-adjective")
        public var adjective: String

        @Locator(file: "company-bs_adjective")
        public var bsAdjective: String

        @Locator(file: "company-bs_noun")
        public var bsNoun: String

        @Locator(file: "company-bs_verb")
        public var bsVerb: String

        @Locator(file: "company-descriptor")
        public var descriptor: String

        @Locator(file: "company-noun")
        public var noun: String

        @Locator(file: "company-suffix")
        public var suffix: String
    }

    struct Database {
        @Locator(file: "database-collation")
        public var collation: String

        @Locator(file: "database-column")
        public var column: String

        @Locator(file: "database-engine")
        public var engine: String

        @Locator(file: "database-type")
        public var type: String
    }

    struct Date {
        @Locator(file: "date-month")
        public var month: String

        @Locator(file: "date-weekday")
        public var weekday: String
    }

    struct Finance {
        @Locator(file: "finance-account_type")
        public var accountType: String

        @Locator(file: "finance-transaction_type")
        public var transactionType: String

        @CurrencyLocator(file: "finance-currency")
        public var currency: Currency?

        public let creditCard = CreditCard()

        public struct CreditCard {
            @Locator(file: "finance-credit_card-american_express", transformer: .creditCard)
            public var americanExpress: String

            @Locator(file: "finance-credit_card-diners_club", transformer: .creditCard)
            public var dinersClub: String

            @Locator(file: "finance-credit_card-discover", transformer: .creditCard)
            public var discover: String

            @Locator(file: "finance-credit_card-instapayment", transformer: .creditCard)
            public var instaPayment: String

            @Locator(file: "finance-credit_card-jcb", transformer: .creditCard)
            public var jcb: String

            @Locator(file: "finance-credit_card-laser", transformer: .creditCard)
            public var laser: String

            @Locator(file: "finance-credit_card-maestro", transformer: .creditCard)
            public var maestro: String

            @Locator(file: "finance-credit_card-mastercard", transformer: .creditCard)
            public var mastercard: String

            @Locator(file: "finance-credit_card-solo", transformer: .creditCard)
            public var solo: String

            @Locator(file: "finance-credit_card-switch", transformer: .creditCard)
            public var `switch`: String

            @Locator(file: "finance-credit_card-visa", transformer: .creditCard)
            public var visa: String
        }
    }

    struct Hacker {
        @Locator(file: "hacker-abbreviation")
        public var abbreviation: String

        @Locator(file: "hacker-adjective")
        public var adjective: String

        @Locator(file: "hacker-ingverb")
        public var ingverb: String

        @Locator(file: "hacker-noun")
        public var noun: String

        @Locator(file: "hacker-phrase")
        public var phrase: String

        @Locator(file: "hacker-verb")
        public var verb: String
    }

    struct Internet {
        @Locator(file: "internet-avatar_uri")
        public var avatarUri: String

        @Locator(file: "internet-domain_suffix")
        public var domainSuffix: String

        @Locator(file: "internet-example_email")
        public var exampleEmail: String

        @Locator(file: "internet-free_email")
        public var freeEmail: String
    }

    struct Lorem {
        @Locator(file: "lorem-supplemental")
        public var supplemental: String

        @Locator(file: "lorem-words")
        public var words: String
    }

    struct Music {
        @Locator(file: "music-genre")
        public var genre: String
    }

    struct Name {
        @Locator(file: "name-binary_gender")
        public var binaryGender: String

        @Locator(file: "name-female_first_name")
        public var femaleFirstName: String

        @Locator(file: "name-first_name")
        public var firstName: String

        @Locator(file: "name-gender")
        public var gender: String

        @Locator(file: "name-last_name")
        public var lastName: String

        @Locator(file: "name-male_first_name")
        public var maleFirstName: String

        @Locator(file: "name-prefix")
        public var prefix: String

        @Locator(file: "name-suffix")
        public var suffix: String

        @Locator(file: "name-title")
        public var title: String
    }

    struct PhoneNumber {
        @Locator(file: "phone_number-formats")
        public var format: String
    }

    struct System {
        @Locator(file: "system-directoryPaths")
        public var directoryPaths: String

        @MimeTypeLocator(file: "system-mimeTypes")
        public var mimeTypes: MimeType?
    }

    struct Team {
        @Locator(file: "team-creature")
        public var creature: String
    }

    struct Vehicle {
        @Locator(file: "vehicle-bicycle")
        public var bicycle: String

        @Locator(file: "vehicle-fuel")
        public var fuel: String

        @Locator(file: "vehicle-manufacturer")
        public var manufacturer: String

        @Locator(file: "vehicle-model")
        public var model: String

        @Locator(file: "vehicle-vehicle_type")
        public var vehicleType: String
    }

    struct Word {
        @Locator(file: "word-adjective")
        public var adjective: String

        @Locator(file: "word-adverb")
        public var adverb: String

        @Locator(file: "word-conjunction")
        public var conjunction: String

        @Locator(file: "word-interjection")
        public var interjection: String

        @Locator(file: "word-noun")
        public var noun: String

        @Locator(file: "word-preposition")
        public var preposition: String

        @Locator(file: "word-verb")
        public var verb: String
    }
}
