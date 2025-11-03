// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ProtoDefinitions",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        // Это то, что будет доступно извне
        .library(
            name: "ProtoDefinitions",
            targets: ["ProtoDefinitions"]
        ),
    ],
    dependencies: [
        // Зависимость от SwiftProtobuf
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.26.0"),
    ],
    targets: [
        .target(
            name: "ProtoDefinitions",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ],
            path: "proto"
        ),
    ]
)
