// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ReversePolishNotation",
    products: [
        .library(
            name: "ReversePolishNotation",
            targets: ["ReversePolishNotation"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ReversePolishNotation",
            dependencies: []),
        .testTarget(
            name: "ReversePolishNotationTests",
            dependencies: ["ReversePolishNotation"])
    ]
)
