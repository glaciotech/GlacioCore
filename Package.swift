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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/GlacioCore-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "e0e1e5f24c49c8aea8f417a1a828e00d039651aa1bf594bee2a42f6c346ffca6"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/GlacioProxyCouplers-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "eb7d6025edcec0a346d103c505dfd7bd6619792582df3c984013ae3082ed29d8"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/MessagePack-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "71e0b99d1ede6fad6ef9e226377c296774f69e1097e2edc4bb1b16146807b0a8"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/ArgumentParser-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "2658a80bd2fe1209018a92ca2b586aca5decf2176b0fef1504d9953cb373ee9e"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/ArgumentParserToolInfo-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "7e05c31ba02e33977b71d110d5fa3e79d356820e8a90f76929e19fb71471f4f8"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.32-rc1/Logging-pre-alpha-v0.14.32-rc1.zip",
                      checksum: "0f1c1073889127dc4357411990cb1ef594f864ed64423c884bffcf300b6970e1"),
    ]
)