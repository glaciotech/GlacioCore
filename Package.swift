// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GlacioCore",
    platforms: [.macOS("10.15"), .iOS(.v13)],
    products: [
        .library(name: "GlacioCore", targets: ["GlacioCoreWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "GlacioCoreWrapper", dependencies: ["GlacioCore", "MessagePack", "ArgumentParser", "ArgumentParserToolInfo"], path: "Sources/GlacioCoreWrapper", publicHeadersPath: "" ),
        .binaryTarget(name: "GlacioCore",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.1/GlacioCore-pre-alpha-v0.1.1.zip",
                      checksum: "316e2d04d5bbb93fd9e618c290d26f3f51fc228a458c0bc2b979f15b13e7b09e"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.1/MessagePack-pre-alpha-v0.1.1.zip",
                      checksum: "85bc30abe460879ec679a762d691d4eef0331d562a1d2c58f373a3dc2f0c48c9"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.1/ArgumentParser-pre-alpha-v0.1.1.zip",
                      checksum: "7aa9436715f39019c167704191c7393d815b3c08640658b7e012b391bd4347b0"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.1/ArgumentParserToolInfo-pre-alpha-v0.1.1.zip",
                      checksum: "b5ecd6e68a142d245ca82da86a5decf048f4aab07e8356d12a37452009c72f39"),
    ]
)

