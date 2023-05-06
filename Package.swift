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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.1/GlacioCore-pre-alpha-v0.12.1.zip",
                      checksum: "830f5613f604d214485d63f7355818f46dac266b4f359a2b68c622bf5bae7c4d"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.1/MessagePack-pre-alpha-v0.12.1.zip",
                      checksum: "4a7f1da87024c71c685c1cc974a0f4a66dc2c201d79def0b0b8d0ed3a07a80d5"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.1/ArgumentParser-pre-alpha-v0.12.1.zip",
                      checksum: "0dee7a67036303421ba61dba89f71e65097813682986087ce5d58918ac05f70d"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.12.1/ArgumentParserToolInfo-pre-alpha-v0.12.1.zip",
                      checksum: "cf4afb5700e65b28481397cc1998d4b434a72ebd687ccadc7ea4551889183143"),
    ]
)