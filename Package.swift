// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorMoloco",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorMoloco", targets: ["XMediatorMolocoTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.10.0"),
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
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorMoloco",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorMoloco/XMediatorMoloco-4.10.0.0.zip",
            checksum: "3ba84df47a2d1875c646b927cc56d809fac2835a1746b5b77b53212d602c7f48"
        ),
    ]
)
