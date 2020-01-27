// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TrainConnections",
    products: [
        .library(
            name: "TrainConnections",
            targets: ["TrainConnections"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TrainConnections",
            dependencies: []),
        .testTarget(
            name: "TrainConnectionsTests",
            dependencies: ["TrainConnections"])
    ]
)
