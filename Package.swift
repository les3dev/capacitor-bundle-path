// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Les3devCapacitorBundlePath",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Les3devCapacitorBundlePath",
            targets: ["BundlePathPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "BundlePathPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BundlePathPlugin"),
        .testTarget(
            name: "BundlePathPluginTests",
            dependencies: ["BundlePathPlugin"],
            path: "ios/Tests/BundlePathPluginTests")
    ]
)