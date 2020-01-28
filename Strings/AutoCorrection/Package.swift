// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "AutoCorrection",
    products: [
        .library(
            name: "AutoCorrection",
            targets: ["AutoCorrection"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AutoCorrection",
            dependencies: []),
        .testTarget(
            name: "AutoCorrectionTests",
            dependencies: ["AutoCorrection"])
    ]
)
