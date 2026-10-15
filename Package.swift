// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorMoloco",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorMoloco", targets: ["XMediatorMolocoTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.11.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorMolocoTarget",
            dependencies: [
                .target(name: "XMediatorMoloco"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
            ],
            path: "XMediatorMolocoTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorMoloco",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorMoloco/XMediatorMoloco-4.11.1.0.zip",
            checksum: "c0254e157b3b74bb0bf31f3c9c2df3a3a5ad3cf0abcd9a4ceed7d51a308e2c9d"
        ),
    ]
)
