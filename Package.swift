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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.16.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingRoadEvents",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingRoadEvents-4.16.0.framework.zip",
            checksum: "aebc026d32d8bea216811d31fb7bed695a74e28937c2b1dfbbc9c862fbc1a8dc"
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
