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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.12.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingRoadEvents",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingRoadEvents-4.12.0.framework.zip",
            checksum: "b713fac4b3ce766c973e3114fd829898bc39a72cac10e60b8f8dfca3084d5fea"
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
