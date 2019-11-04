// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MessageKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MessageKit",
            targets: ["MessageKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vrenetic-inc/InputBarAccessoryView.git", .upToNextMajor(from: "4.3.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MessageKit",
            dependencies: ["InputBarAccessoryView"],
            path: "Sources"
        )
    ]
)
