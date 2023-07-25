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
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/GlacioCore-pre-alpha-v0.14.0.zip",
                      checksum: "9574cd38765ca7445475d13ab7f3ed568910a4215d251ac653767c399ba25cda"),
        .binaryTarget(name: "GlacioProxyCouplers",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/GlacioProxyCouplers-pre-alpha-v0.14.0.zip",
                      checksum: "266a3234b15dc298069eef3b700bbe20b028ee55d18b52ddd4e80b486ed52034"),
        .binaryTarget(name: "MessagePack",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/MessagePack-pre-alpha-v0.14.0.zip",
                      checksum: "dd8118c3bce14fba22ab2d5fb908001fe4f5443903247ea5605d8fdbf1a3187e"),
        .binaryTarget(name: "ArgumentParser",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/ArgumentParser-pre-alpha-v0.14.0.zip",
                      checksum: "2c21f203b5479ab661a2aa98f6307784e45206b76ebbd2f4e98342e975ac8b1a"),
        .binaryTarget(name: "ArgumentParserToolInfo",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/ArgumentParserToolInfo-pre-alpha-v0.14.0.zip",
                      checksum: "4069306d79c81a15219c1d3dae22b44dad5482b24d5ad9621abe7e6e57108696"),
        .binaryTarget(name: "Logging",
                      url: "https://github.com/glaciotech/GlacioCore/releases/download/pre-alpha-v0.14.0/Logging-pre-alpha-v0.14.0.zip",
                      checksum: "3fda38ab81106699ef154c3c2c94d5c0c97feabe21a04d5cc5dabe0bcd71d0fe"),
    ]
)