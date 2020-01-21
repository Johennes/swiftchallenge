// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LenientArrayDecoding",
    products: [
        .library(
            name: "LenientArrayDecoding",
            targets: ["LenientArrayDecoding"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LenientArrayDecoding",
            dependencies: []),
        .testTarget(
            name: "LenientArrayDecodingTests",
            dependencies: ["LenientArrayDecoding"])
    ]
)
