// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "ProtoDefinitions",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "ProtoDefinitions",
            targets: ["ProtoDefinitions"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.26.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "ProtoDefinitions",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "GRPCCore", package: "grpc-swift"),
                .product(name: "GRPCProtobuf", package: "grpc-swift"),
                .product(name: "GRPCHTTP2Core", package: "grpc-swift"),
                .product(name: "GRPCNIOTransportHTTP2", package: "grpc-swift"),
            ],
            path: "proto"
        ),
    ]
)
