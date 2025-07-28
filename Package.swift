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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.19.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingRoadEvents",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingRoadEvents-4.19.0.framework.zip",
            checksum: "4531dad0c523bc426df8baf0c7dbe8827807328e830c9dbc80b14ac5074eaf60"
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
