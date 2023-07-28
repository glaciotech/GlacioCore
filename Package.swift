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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/GlacioCore-pre-alpha-v0.14.2.zip",
                      checksum: "b728c356a8d5a0648bb03dc0438511c99cebe1482014ea771ed2c8a570310db1"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/GlacioProxyCouplers-pre-alpha-v0.14.2.zip",
                      checksum: "e8b1a9fad3abe11eba6dc6ad8d0f5414cfdb1c75d306d5d1224015c25fdf5f94"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/MessagePack-pre-alpha-v0.14.2.zip",
                      checksum: "c6517729a9b45ad1f6d01cef858526c20b49b79fc6d5f59536ca9d48792570e5"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/ArgumentParser-pre-alpha-v0.14.2.zip",
                      checksum: "ab156f9f922f441fadabd06c25dd62ba36f49f6a41aed5a4532efb1ffe54d711"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/ArgumentParserToolInfo-pre-alpha-v0.14.2.zip",
                      checksum: "6932424b6bd9e7b30da73199413db0e0bdb066cc9d07ab66155139fc6f76cdfd"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.2/Logging-pre-alpha-v0.14.2.zip",
                      checksum: "cf2f68609bbc6a4d58a5bce832a1507367ecb661f618ff8c3f5b3d35067edac4"),
    ]
)