//
//  Loader.swift
//  
//
//  Created by khoa on 10/08/2021.
//

import Foundation

final class Loader {
    static let shared = Loader()

    private var cache: [URL: [String]] = [:]

    func load(locale: String = Fake.locale, file: String) -> String {
        guard let url = bundle.url(
            forResource: "\(locale)-\(file)",
            withExtension: "js"
        ) else { return "" }

        if let lines = cache[url] {
            return process(lines: lines)
        }

        do {
            let content = try String(contentsOfFile: url.path)
            var lines = content
                .components(separatedBy: .newlines)
                .map { line in
                    line
                        .replacingOccurrences(of: "\",", with: "")
                        .replacingOccurrences(of: "\"", with: "")
                }

            lines.removeFirst()
            lines.removeLast()

            cache[url] = lines
            return process(lines: lines)
        } catch {
            return ""
        }
    }

    private func process(lines: [String]) -> String {
        lines.randomElement() ?? ""
    }

    private var bundle: Bundle {
        #if SWIFT_PACKAGE
        Bundle.module
        #else
        Bundle.main
        #endif
    }
}
