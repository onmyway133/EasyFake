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
            let lines = load()
            let line = lines.randomElement() ?? ""
            return transformer.transform(line)
        }
    }

    private static var cache: [String: [String]] = [:]
    private func load() -> [String] {
        let key = "\(Fake.locale)-\(file)"

        if let lines = Self.cache[key] {
            return lines
        }

        var lines = Loader()
            .load(file: file)
            .components(separatedBy: .newlines)
            .map { line in
                line
                    .replacingOccurrences(of: "\",", with: "")
                    .replacingOccurrences(of: "\"", with: "")
            }
            .filter { line in
                let ignore = ["[", "]", "//"]
                return ignore.allSatisfy {
                    !line.contains($0)
                }
            }

        lines.removeFirst()
        lines.removeLast()

        Self.cache[key] = lines
        return lines
    }
}
