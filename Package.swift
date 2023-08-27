// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "SoulSwapSectionsTableView",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "SoulSwapSectionsTableView",
                    targets: ["SoulSwapSectionsTableView"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "SoulSwapSectionsTableView",
                    dependencies: [
                        "SnapKit",
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            )
        ]
)
