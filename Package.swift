// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SDL",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SDL",
            targets: ["SDL"]),
        .executable(
            name: "SDLDemo",
            targets: ["SDLDemo"]),
        ],
    dependencies: [
        .package(url: "https://github.com/PureSwift/CSDL2.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SDLDemo",
            dependencies: ["SDL"]),
        .target(
            name: "SDL",
            dependencies: []),
        .testTarget(
            name: "SDLTests",
            dependencies: ["SDL"]),
        ]
)
