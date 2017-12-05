// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Leland",
    products: [
        .library(
            name: "Leland",
            targets: ["Leland"]),
    ],
    dependencies: [
        .package(url: "https://github.com/YOCKOW/SwiftTimeSpecification.git", from: "1.0.0"),
        .package(url: "https://github.com/chebizarro/CPixman.git", from: "1.0.0"),
        .package(url: "https://github.com/jatoben/CommandLine.git", from: "3.0.0-pre1"),
        .package(url: "https://github.com/kylef/fd.git", from: "0.2.0"),
        .package(url: "https://github.com/cyllene-project/Networking.git", from: "0.2.1"),
    ],
    targets: [
        .target(
            name: "Leland",
            dependencies: ["TimeSpecification", "Compositor"]),
        .target(
            name: "Compositor",
            dependencies: ["TimeSpecification", "CommandLine", "fd", "Networking"]),
        .testTarget(
            name: "LelandTests",
            dependencies: ["Leland"]),
    ]
)
