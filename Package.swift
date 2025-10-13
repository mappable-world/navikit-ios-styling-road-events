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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.17.1"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingRoadEvents",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingRoadEvents-4.17.1.framework.zip",
            checksum: "9310debb713a2f82e6f672e077a0e80c943cf3b7988c0be7c52bd684f387ad91"
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
