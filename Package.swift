// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SkaleKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SkaleKit",
            targets: ["SkaleKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SkaleKit",
            path: "Distribution/SkaleKit.xcframework"
        )
    ]
)
