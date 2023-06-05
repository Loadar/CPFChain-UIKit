// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CPFChain-UIKit",
    products: [
        .library(
            name: "CPFChain-UIKit",
            targets: ["CPFChain-UIKit"]),
        .library(
            name: "CPFChain-UIKit-Dynamic",
            type: .dynamic,
            targets: ["CPFChain-UIKit"]),

    ],
    dependencies: [
        .package(url: "https://github.com/Loadar/CPFChain.git", from: Version(stringLiteral: "2.2.3")),
    ],
    targets: [
        .target(
            name: "CPFChain-UIKit",
            dependencies: ["CPFChain"]),
    ]
)
