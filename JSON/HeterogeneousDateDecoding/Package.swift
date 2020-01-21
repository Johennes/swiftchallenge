// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "HeterogeneousDateDecoding",
    products: [
        .library(
            name: "HeterogeneousDateDecoding",
            targets: ["HeterogeneousDateDecoding"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HeterogeneousDateDecoding",
            dependencies: []),
        .testTarget(
            name: "HeterogeneousDateDecodingTests",
            dependencies: ["HeterogeneousDateDecoding"])
    ]
)
