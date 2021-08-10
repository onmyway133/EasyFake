#!/usr/bin/env swift

import Foundation

let localesURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    .appendingPathComponent("Sources/EasyFake/Resources/locales")

let manager = FileManager.default
manager.enumerator(atPath: localesURL.path)?.forEach { path in
    guard let path = path as? String else { return }
    let url = URL(fileURLWithPath: path, relativeTo: localesURL)

    guard url.lastPathComponent != "index.js" else {
        try? manager.removeItem(at: url)
        return
    }

    guard url.pathExtension != "DS_Store" else {
        try? manager.removeItem(at: url)
        return
    }

    let lastPath = url.path
            .replacingOccurrences(of: localesURL.path, with: "")
    guard !lastPath.isEmpty else { return }

    let newName = lastPath
        .trimmingCharacters(in: CharacterSet(arrayLiteral: "/"))
        .replacingOccurrences(of: "/", with: "-")
    let newUrl = localesURL.appendingPathComponent(newName)

    if url.pathExtension == "js" {
        try? manager.moveItem(at: url, to: newUrl)
    }
}



