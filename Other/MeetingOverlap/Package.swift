// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MeetingOverlap",
    products: [
        .library(
            name: "MeetingOverlap",
            targets: ["MeetingOverlap"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MeetingOverlap",
            dependencies: []),
        .testTarget(
            name: "MeetingOverlapTests",
            dependencies: ["MeetingOverlap"])
    ]
)
