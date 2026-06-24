// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnapSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Keep the default SnapSDK product minimal for Camera Kit users.
        .library(
            name: "SnapSDK",
            targets: ["SCSDKCoreKit"]
        ),
        .library(
            name: "SnapSDKLoginKit",
            targets: ["SCSDKCoreKit", "SCSDKLoginKit"]
        ),
        .library(
            name: "SnapSDKCreativeKit",
            targets: ["SCSDKCoreKit", "SCSDKCreativeKit"]
        ),
        .library(
            name: "SnapSDKAll",
            targets: ["SCSDKCoreKit", "SCSDKLoginKit", "SCSDKCreativeKit"]
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
        .binaryTarget(
            name: "SCSDKCreativeKit",
            path: "SCSDKCreativeKit.xcframework"
        ),
    ]
)
