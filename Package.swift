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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/GlacioCore-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "a6980a712c3b429fa002eed3b2566a459e7933bfe4ac8942853d50db967dcd54"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/GlacioProxyCouplers-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "7cc2d15839dd2f28fc60306603abcb352840ef7234a48e7aa98ffcdceae1bb58"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/MessagePack-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "ecc7a57cdca561e3c6447e341d3eb2c8807565860138c6415f937a152c7f5832"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/ArgumentParser-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "55d0fe42781c2d43a0ccd155c96a620e64a74c3ce79ccd486f35e037b2539466"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/ArgumentParserToolInfo-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "1809bdd70b2214e4dc8f35962cbdb3beb0c2df54e5427b03b1730e1599deac22"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.31-rc1/Logging-pre-alpha-v0.14.31-rc1.zip",
                      checksum: "1e9ad1a3afaa46c1b59a2a62f41b05474be579b05d54d5a17ba5c8da454edbad"),
    ]
)