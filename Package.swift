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
        .target(name: "GlacioCoreWrapper",
                dependencies: ["GlacioCore", "GlacioProxyCouplers", "MessagePack", "ArgumentParser", "ArgumentParserToolInfo", "Logging"],
                path: "Sources/GlacioCoreWrapper", publicHeadersPath: "" ),
        .binaryTarget(name: "GlacioCore",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/GlacioCore-pre-alpha-v0.14.1.zip",
                      checksum: "4b98ae03e7f9cffb7638028fb30c118d477b293c9cfe15a522e34dc86f1e8a15"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/GlacioProxyCouplers-pre-alpha-v0.14.1.zip",
                      checksum: "25c89508e1406062caa43a7a9c0fb8d27bd57fd3f78ae229b0fabfd22ed4d274"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/MessagePack-pre-alpha-v0.14.1.zip",
                      checksum: "618248e2884037e9ad03a76eec07a3f4c755d8b528aaf5606ef39cc75c6b3a41"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/ArgumentParser-pre-alpha-v0.14.1.zip",
                      checksum: "03c410970232deb0615a0f54244f301a9dfb63a8e17071fb4bae048f61fb1308"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/ArgumentParserToolInfo-pre-alpha-v0.14.1.zip",
                      checksum: "7cbc0c137b58a431dc813da05551d47efade97217617994df715989ca23c6503"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.1/Logging-pre-alpha-v0.14.1.zip",
                      checksum: "8b4100e5b2892cf1fbf588550bf4b740fb3b6ebd570fe69f77b175550ba95502"),
    ]
)