// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Reverse",
    products: [
        .library(name: "Reverse", targets: ["Reverse"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Reverse", dependencies: []),
        .testTarget(name: "ReverseTests", dependencies: ["Reverse"])
    ]
)
