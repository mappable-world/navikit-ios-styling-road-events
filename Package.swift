// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MMKStylingRoadEvents",
    defaultLocalization: "en",
    platforms: [.iOS("13.0")],
    products: [
        .library(
            name: "MMKStylingRoadEvents",
            type: .static,
            targets: [
                "MMKStylingRoadEvents",
                "MMKStylingRoadEventsResources"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.18.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingRoadEvents",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingRoadEvents-4.18.0.framework.zip",
            checksum: "dd55b63ec67d5786f7dbd9ee601c773110a4002c6963b4adb63840cc5a6965dc"
        ),
        .target(
            name: "MMKStylingRoadEventsResources",
            dependencies: [
                .product(name: "MappableMobileNavikit", package: "navikit-ios"),
            ],
            path: "Resources",
            resources: [.process("Contents")]
        )
    ]
)
