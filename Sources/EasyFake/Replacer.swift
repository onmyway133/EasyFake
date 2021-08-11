//
//  Replacer.swift
//  EasyFake
//
//  Created by khoa on 11/08/2021.
//

import Foundation

extension String {
    func replacingHash() -> String {
        self
            .map { c in
                guard c == "#" else { return String(c) }
                let number = Int.random(in: 0 ... 9)
                return "\(number)"
            }
            .joined()
    }

    func replacingRegexSquareBrackets() -> String {
        replacingMatches(
            pattern: #"\[\d-\d\]"#,
            replace: Replacer.replaceRegexSquareBrackets
        )
    }

    func replacingRegexCurlyBraces() -> String {
        replacingMatches(
            pattern: #"\{[\d*,]*\d*\}"#,
            replace: Replacer.replaceRegexCurlyBraces
        )
    }

    private func replacingMatches(
        pattern: String,
        replace: (String) -> String?
    ) -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])

            let matches = regex.matches(
                in: self,
                options: [],
                range: NSMakeRange(0, self.count)
            )

            let mutableString = NSMutableString(string: self)
            matches.reversed().forEach { match in
                guard
                    let range = Range(match.range, in: self),
                    let replacement = replace(String(self[range]))
                else { return}

                regex.replaceMatches(
                    in: mutableString,
                    options: .reportCompletion,
                    range: match.range,
                    withTemplate: replacement
                )
            }

            return String(mutableString)
        } catch {
            return self
        }
    }
}

private struct Replacer {
    static func replaceRegexSquareBrackets(string: String) -> String? {
        let parts = string
            .trimmingCharacters(in: .decimalDigits.inverted)
            .split(separator: "-")
            .map { String($0) }

        guard
            let min = Int(parts.first ?? ""),
            let max = Int(parts.last ?? "")
        else { return nil }

        let number = Int.random(in: min ... max)
        return "\(number)"
    }

    static func replaceRegexCurlyBraces(string: String) -> String? {
        let parts = string
            .trimmingCharacters(in: .decimalDigits.inverted)
            .split(separator: ",")
            .compactMap {
                Int($0)
            }

        guard let number = parts.randomElement() else {
            return nil
        }

        return "\(number)"
    }
}
