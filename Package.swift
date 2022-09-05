// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PAckageWithFrameAandFrameB",
    products: [
        .library(
            name: "PAckageWithFrameAandFrameB",
            targets: ["FrameworkAPrivate", "FrameworkBPrivate"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
     
        .binaryTarget(
                     name: "FrameworkAPrivate",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/FrameworkA/FrameworkAPrivate.xcframework.zip",
                    checksum: "04f9c8676514de734ec93a53801f1b37b75557a23315575898f19457bad7b1ed"),
        .binaryTarget(
                     name: "FrameworkBPrivate",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/FrameworkB/FrameworkBPrivate.xcframework.zip",
                     checksum: "efdd7d2d9f343db0a9967daf1d8c4e9ceb742734ee6acafc2623a283cc6ffb3d")
    ]
)
