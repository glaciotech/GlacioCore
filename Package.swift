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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/GlacioCore-pre-alpha-v0.13.1.zip",
                      checksum: "78e85a7a4177a136be25be7bbb090dd9c4e96406c4c3ac712ce7cd4a9b0f781d"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/GlacioProxyCouplers-pre-alpha-v0.13.1.zip",
                      checksum: "406a80eab2a979eba00e60524641a605faa67f4d58273ab4c2d6d473a60774b1"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/MessagePack-pre-alpha-v0.13.1.zip",
                      checksum: "ca8d7a44650d7ab72bd890ece032271e04c522c480ff66973e0cb4811c33d5fe"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/ArgumentParser-pre-alpha-v0.13.1.zip",
                      checksum: "7d0a7ffcaec18220816042c567430fb1a5f7e44581990283de75e546c8bf6a7c"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/ArgumentParserToolInfo-pre-alpha-v0.13.1.zip",
                      checksum: "2c9f5fe9f28402fcee4d661197a306a9e7e134326418c0ee56707a5a996c9fa3"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.13.1/Logging-pre-alpha-v0.13.1.zip",
                      checksum: "b2a874cc53c025d98a65d2e3ddf8e3fae5a2ebc11d33393d3ccb1604b2363c74"),
    ]
)