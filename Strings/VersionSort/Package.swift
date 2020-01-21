// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "VersionSort",
    products: [
        .library(
            name: "VersionSort",
            targets: ["VersionSort"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "VersionSort",
            dependencies: []),
        .testTarget(
            name: "VersionSortTests",
            dependencies: ["VersionSort"])
    ]
)
