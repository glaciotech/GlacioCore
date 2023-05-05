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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.0/GlacioCore-pre-alpha-v0.12.0.zip",
                      checksum: "4fd692cbef7a8278c2daabeca60d7de2688f53f05fc90e7292d0548232b03b2d"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.0/MessagePack-pre-alpha-v0.12.0.zip",
                      checksum: "27e01fa49e35fd575d426bcd54ee1d2ad0b8fad24755487526196556a86a9534"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.0/ArgumentParser-pre-alpha-v0.12.0.zip",
                      checksum: "bb42604cdad286015b8517e5227e74f3b72f7834fcf1803debba17760fbbbcde"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.0/ArgumentParserToolInfo-pre-alpha-v0.12.0.zip",
                      checksum: "73a5aedcc4c4d1d0767cd1f53c2e7c65c8d9add2e2b18a7c3b23ad263c4611bf"),
    ]
)