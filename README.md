# EasyFake

Fake data generation in Swift

## Usage

```swift
let faker = Faker()
faker.address.country
faker.name.firstName
```

Change default locale

```swift
Fake.locale = "fr"
```

### API Methods

* address
  * zipCode
  * zipCodeByState
  * city
  * cityPrefix
  * citySuffix
  * cityName
  * streetName
  * streetAddress
  * streetSuffix
  * streetPrefix
  * secondaryAddress
  * county
  * country
  * countryCode
  * state
  * stateAbbr
  * latitude
  * longitude
  * direction
  * cardinalDirection
  * ordinalDirection
  * nearbyGPSCoordinate
  * timeZone
* animal
  * dog
  * cat
  * snake
  * bear
  * lion
  * cetacean
  * horse
  * bird
  * cow
  * fish
  * crocodilia
  * insect
  * rabbit
  * type
* commerce
  * color
  * department
  * productName
  * price
  * productAdjective
  * productMaterial
  * product
  * productDescription
* company
  * suffixes
  * companyName
  * companySuffix
  * catchPhrase
  * bs
  * catchPhraseAdjective
  * catchPhraseDescriptor
  * catchPhraseNoun
  * bsAdjective
  * bsBuzz
  * bsNoun
* database
  * column
  * type
  * collation
  * engine
* datatype
  * number
  * float
  * datetime
  * string
  * uuid
  * boolean
  * hexaDecimal
  * json
  * array
* date
  * past
  * future
  * between
  * betweens
  * recent
  * soon
  * month
  * weekday
* fake
* finance
  * account
  * accountName
  * routingNumber
  * mask
  * amount
  * transactionType
  * currencyCode
  * currencyName
  * currencySymbol
  * bitcoinAddress
  * litecoinAddress
  * creditCardNumber
  * creditCardCVV
  * ethereumAddress
  * iban
  * bic
  * transactionDescription
* git
  * branch
  * commitEntry
  * commitMessage
  * commitSha
  * shortSha
* hacker
  * abbreviation
  * adjective
  * noun
  * verb
  * ingverb
  * phrase
* helpers
  * randomize
  * slugify
  * replaceSymbolWithNumber
  * replaceSymbols
  * replaceCreditCardSymbols
  * repeatString
  * regexpStyleStringParse
  * shuffle
  * mustache
  * createCard
  * contextualCard
  * userCard
  * createTransaction
* image
  * image
  * avatar
  * imageUrl
  * abstract
  * animals
  * business
  * cats
  * city
  * food
  * nightlife
  * fashion
  * people
  * nature
  * sports
  * technics
  * transport
  * dataUri
  * lorempixel
  * unsplash
  * lorempicsum
* internet
  * avatar
  * email
  * exampleEmail
  * userName
  * protocol
  * httpMethod
  * url
  * domainName
  * domainSuffix
  * domainWord
  * ip
  * ipv6
  * port
  * userAgent
  * color
  * mac
  * password
* lorem
  * word
  * words
  * sentence
  * slug
  * sentences
  * paragraph
  * paragraphs
  * text
  * lines
* mersenne
  * rand
  * seed
  * seed_array
* music
  * genre
* name
  * firstName
  * lastName
  * middleName
  * findName
  * jobTitle
  * gender
  * prefix
  * suffix
  * title
  * jobDescriptor
  * jobArea
  * jobType
* phone
  * phoneNumber
  * phoneNumberFormat
  * phoneFormats
* system
  * fileName
  * commonFileName
  * mimeType
  * commonFileType
  * commonFileExt
  * fileType
  * fileExt
  * directoryPath
  * filePath
  * semver
* time
  * recent
* unique
* vehicle
  * vehicle
  * manufacturer
  * model
  * type
  * fuel
  * vin
  * color
  * vrm
  * bicycle

## Installation

**EasyFake** is also available through [Swift Package Manager](https://swift.org/package-manager/).
Add EasyFake as a dependency to your Package.swift. For more information, please see the [Swift Package Manager documentation](https://github.com/apple/swift-package-manager/tree/master/Documentation).

```swift
.package(url: "https://github.com/onmyway133/EasyFake", from: "1.0.0")
```

**EasyFake** can also be installed manually. Just download and drop `Sources` folders in your project.

## Author

Khoa Pham, onmyway133@gmail.com

## Credit

- Data is from https://github.com/Marak/faker.js

## License

**EasyFake** is available under the MIT license. See the [LICENSE](https://github.com/onmyway133/EasyFake/blob/master/LICENSE.md) file for more info.
