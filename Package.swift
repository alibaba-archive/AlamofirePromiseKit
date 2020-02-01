// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofirePromiseKit",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AlamofirePromiseKit",
            targets: ["AlamofirePromiseKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1"),
        .package(url: "https://github.com/yannickl/AwaitKit.git", from: "5.2.0")
    ],
    targets: [
        .target(
            name: "AlamofirePromiseKit",
            dependencies: ["Alamofire", "AwaitKit"]),
        .testTarget(
            name: "AlamofirePromiseKitTests",
            dependencies: ["AlamofirePromiseKit"])
    ]
)
