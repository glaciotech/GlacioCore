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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.0/GlacioCore-pre-alpha-v0.1.0.zip",
                      checksum: "1e0185b261874df9cdeb771800a8fb45c0ba1f172339991c48166896be726560"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.0/MessagePack-pre-alpha-v0.1.0.zip",
                      checksum: "bcccaa8769402ff2964d9d74e206f2b36290ea37da71a90d0ce5be740290c483"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.0/ArgumentParser-pre-alpha-v0.1.0.zip",
                      checksum: "8c367d135c02d9351141e9a2b1a60b14549caf523869549b198a6f77fa58c76c"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.1.0/ArgumentParserToolInfo-pre-alpha-v0.1.0.zip",
                      checksum: "65e43b2367ef8975c1af19efc6b24e272ae84ed73974c559bb6b2e059c97e2b3"),
    ]
)

