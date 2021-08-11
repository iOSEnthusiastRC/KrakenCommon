// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KrakenCommon",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "KrakenCommon",
            targets: ["KrakenCommon"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "KrakenCommon",
            dependencies: []),
        .testTarget(
            name: "KrakenCommonTests",
            dependencies: ["KrakenCommon"]),
    ]
)
