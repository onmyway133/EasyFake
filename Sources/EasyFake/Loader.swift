//
//  Loader.swift
//  
//
//  Created by khoa on 10/08/2021.
//

import Foundation

struct Loader {
    func load(locale: String = Fake.locale, file: String) -> String {
        guard let url = bundle.url(
            forResource: "\(locale)-\(file)",
            withExtension: "js"
        ) else { return "" }

        do {
            return try String(contentsOfFile: url.path)
        } catch {
            return ""
        }
    }

    private var bundle: Bundle {
        #if SWIFT_PACKAGE
        Bundle.module
        #else
        Bundle.main
        #endif
    }
}
