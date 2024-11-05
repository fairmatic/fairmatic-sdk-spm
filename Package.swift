// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FairmaticSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FairmaticSDK",
            targets: ["FairmaticSDKTarget"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git",
            .upToNextMinor(from: "2.34.2")
        )
    ],
    targets: [
        .target(
            name: "FairmaticSDKWrapper",
            dependencies: [
                .target(name: "FairmaticSDK"),
                .target(name: "SQLite"),
                .product(name: "AWSSQS", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm")
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("Accelerate"),
                .linkedLibrary("z"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "FairmaticSDK",
            path: "FairmaticSDK.xcframework"
        ),
        .binaryTarget(
            name: "SQLite",
            path: "SQLite.xcframework"
        ),
        .target(
            name: "FairmaticSDKTarget",
            dependencies: [.target(name: "FairmaticSDKWrapper")]
        )
    ]
)
