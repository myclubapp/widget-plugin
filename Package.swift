// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MyclubWidgetPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MyclubWidgetPlugin",
            targets: ["MyClubAppWidgetPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MyClubAppWidgetPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/MyClubAppWidgetPlugin"),
        .testTarget(
            name: "MyClubAppWidgetPluginTests",
            dependencies: ["MyClubAppWidgetPlugin"],
            path: "ios/Tests/MyClubAppWidgetPluginTests")
    ]
)