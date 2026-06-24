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
        )
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKCoreKit",
            path: "SCSDKCoreKit.xcframework"
        ),
    ]
)
