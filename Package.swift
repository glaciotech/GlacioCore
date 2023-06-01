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
        .target(name: "GlacioCoreWrapper", dependencies: ["GlacioCore", "GlacioProxyCouplers", "MessagePack", "ArgumentParser", "ArgumentParserToolInfo"], path: "Sources/GlacioCoreWrapper", publicHeadersPath: "" ),
        .binaryTarget(name: "GlacioCore",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.0/GlacioCore-pre-alpha-v0.13.0.zip",
                      checksum: "ba04d34288cd940de6b450496af9ec4a3bb20242c2727627de664775c77b9620"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.0/GlacioProxyCouplers-pre-alpha-v0.13.0.zip",
                      checksum: "b1f20e4e7df98e574c786e1710d17591a863b01c482eb2dae2933fef220f8a94"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.0/MessagePack-pre-alpha-v0.13.0.zip",
                      checksum: "9b7e07f97e4438c95e687db3a294ba04ef40ea33464a40653348c169b17bd903"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.0/ArgumentParser-pre-alpha-v0.13.0.zip",
                      checksum: "24f5231419e2c7b07b5af3796e87d8cf9dc68518462639698b5d581cef9f02b8"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.0/ArgumentParserToolInfo-pre-alpha-v0.13.0.zip",
                      checksum: "07fd13bfc8819d1301f9a48176dbef8b08fbbfa5a2fab97d0117ac3dedb092b5"),
    ]
)