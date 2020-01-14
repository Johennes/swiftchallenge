// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ProtocolDispatch",
    products: [
        .library(
            name: "ProtocolDispatch",
            targets: ["ProtocolDispatch"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProtocolDispatch",
            dependencies: []),
        .testTarget(
            name: "ProtocolDispatchTests",
            dependencies: ["ProtocolDispatch"])
    ]
)
