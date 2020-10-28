// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Bagel",
    products: [
        .library(name: "Bagel", targets: ["Bagel"])
    ],
    dependencies: [
        .package(url: "https://github.com/bogdangolubcr/CocoaAsyncSocket.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Bagel",
            dependencies: ["CocoaAsyncSocket"],
            path: "iOS/Source",
            publicHeadersPath: "."
        )
    ],
    swiftLanguageVersions: [.v5]
)
