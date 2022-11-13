// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "solt.website",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "Run", targets: ["Run"]),
        .library(name: "App", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "4.0.0")),

        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", .upToNextMajor(from: "4.0.0")),

        // Leaf Markdown.
        .package(url: "https://github.com/vapor-community/leaf-markdown.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(name: "App", dependencies: [
            .product(name: "LeafMarkdown", package: "leaf-markdown"),
            .product(name: "Leaf", package: "leaf"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

