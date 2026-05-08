// swift-tools-version: 5.11
import PackageDescription

let package = Package(
    name: "MetabindAssistantDemo",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .visionOS(.v1),
    ],
    dependencies: [
        .package(url: "https://github.com/metabindai/metabind-ai-apple.git", from: "0.1.0"),
    ],
    targets: [
        .executableTarget(
            name: "MetabindAssistantDemo",
            dependencies: [
                .product(name: "MetabindAssistant", package: "metabind-ai-apple"),
            ]
        ),
    ]
)
