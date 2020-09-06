// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Flurry",
    platforms: [
        .iOS("14")
        ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FlurryAnalyticsSPM",
            targets: ["FlurryAnalytics"]
        ),
//        .library(
//            name: "FlurryMessagingSPM",
//            targets: ["FlurryMessaging"]
//        ),
        .library(
            name: "FlurryConfigSPM",
            targets: ["FlurryConfig"]
        ),
        .library(
            name: "FlurryAdsSPM",
            targets: ["FlurryAds"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FlurryAnalytics",
            dependencies: ["FlurryAnalytics"]
        ),
//        .target(
//            name: "FlurryMessaging",
//            dependencies: ["FlurryMessaging"]
//        ),
        .target(
            name: "FlurryConfig",
            dependencies: ["FlurryConfig"]
        ),
        .target(
            name: "FlurryAds",
            dependencies: ["FlurryAds"]
        ),
//        .binaryTarget(
//            name: "FlurryMessaging",
//            path: "artifacts/FlurryMessaging.xcframework"
//        ),
        .binaryTarget(
            name: "FlurryConfig",
            path: "artifacts/FlurryConfig.xcframework"
        ),
        .binaryTarget(
            name: "FlurryAnalytics",
            path: "artifacts/Flurry.xcframework"
        ),
        .binaryTarget(
            name: "FlurryAds",
            path: "artifacts/FlurryAds.xcframework"
        ),
        
        .testTarget(
            name: "FlurryAnalyticsSPM",
            dependencies: ["FlurryAnalytics"]
        ),
//        .testTarget(
//            name: "FlurryMessagingSPM",
//            dependencies: ["FlurryMessaging"]
//        ),
        .testTarget(
            name: "FlurryConfigSPM",
            dependencies: ["FlurryConfig"]
        ),
        .testTarget(
            name: "FlurryAdsSPM",
            dependencies: ["FlurryAds"]
        )
    ]
)

let package = Package(
    name: "FlurryMessaging",
    platforms: [
        .iOS("14")
        ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FlurryMessagingSPM",
            targets: ["FlurryMessaging"]
        ),
    ],
    dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FlurryMessaging",
            dependencies: ["FlurryMessaging"]
        ),
        .binaryTarget(
            name: "FlurryMessaging",
            path: "artifacts/FlurryMessaging.xcframework"
        ),
        .testTarget(
            name: "FlurryMessagingSPM",
            dependencies: ["FlurryMessaging"]
        ),
    ]
)
