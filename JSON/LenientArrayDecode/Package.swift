// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LenientArrayDecode",
    products: [
        .library(
            name: "LenientArrayDecode",
            targets: ["LenientArrayDecode"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LenientArrayDecode",
            dependencies: []),
        .testTarget(
            name: "LenientArrayDecodeTests",
            dependencies: ["LenientArrayDecode"])
    ]
)
