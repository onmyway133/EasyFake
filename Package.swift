// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EasyFake",
    products: [
        .library(
            name: "EasyFake",
            targets: ["EasyFake"]
        ),
    ],
    targets: [
        .target(
            name: "EasyFake",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "EasyFakeTests",
            dependencies: ["EasyFake"]
        ),
    ]
)
