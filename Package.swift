// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3),
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream", "Realm", "RealmSwift"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: ["Realm", "RealmSwift"],
            path: "IceCream",
            exclude: ["./info.plist"],
            sources: ["Classes"]
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/intitni/IceCream/releases/download/2021.0.0/Realm.xcframework.zip",
            checksum: "1949fdd92ab82a89b7f768bd9ce623932e72fa33f46d3aed099cd9a381d8420a"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/intitni/IceCream/releases/download/2021.0.0/RealmSwift.xcframework.zip",
            checksum: "dee856d492a4f53c1ec1d66404ebdd4b4289f95dd79af6df2e07d16484cb31dc"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
