// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnapSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "SnapSDK",
            targets: ["SCSDKCoreKit"]
        ),
        .library(
            name: "SnapSDKLoginKit",
            targets: ["SCSDKCoreKit", "SCSDKLoginKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKCoreKit",
            path: "SCSDKCoreKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKLoginKit",
            path: "SCSDKLoginKit.xcframework"
        ),
    ]
)
