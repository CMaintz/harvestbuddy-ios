// swift-tools-version: 6.0
import PackageDescription

// Models, API client and view models, kept free of UIKit and SwiftUI so they build and test on
// Linux in CI as well as on macOS. The SwiftUI app in App/ is generated from project.yml.
let package = Package(
    name: "HarvestBuddyKit",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [.library(name: "HarvestBuddyKit", targets: ["HarvestBuddyKit"])],
    targets: [
        .target(name: "HarvestBuddyKit"),
        .testTarget(name: "HarvestBuddyKitTests", dependencies: ["HarvestBuddyKit"]),
    ]
)
