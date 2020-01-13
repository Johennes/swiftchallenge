// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SynchronousDispatch",
    products: [
        .library(name: "SynchronousDispatch", targets: ["SynchronousDispatch"])
    ],
    dependencies: [],
    targets: [
        .target(name: "SynchronousDispatch", dependencies: []),
        .testTarget(name: "SynchronousDispatchTests", dependencies: ["SynchronousDispatch"])
    ]
)
