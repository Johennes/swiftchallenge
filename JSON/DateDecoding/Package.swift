// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DateDecoding",
    products: [
        .library(
            name: "DateDecoding",
            targets: ["DateDecoding"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DateDecoding",
            dependencies: []),
        .testTarget(
            name: "DateDecodingTests",
            dependencies: ["DateDecoding"])
    ]
)
