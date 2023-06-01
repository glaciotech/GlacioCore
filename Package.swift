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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/VERSIONTAG/GlacioCoreFile",
                      checksum: "GlacioCoreSHA"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/VERSIONTAG/MessagePackFile",
                      checksum: "MessagePackSHA"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/VERSIONTAG/ArgumentParserFile",
                      checksum: "ArgumentParserSHA"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/VERSIONTAG/ArgumentParserToolInfoFile",
                      checksum: "ArgumentParserToolInfoSHA"),
    ]
)