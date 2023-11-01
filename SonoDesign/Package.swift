// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SonoDesign",
  platforms: [.iOS(.v16)],
  products: [
    .library(
      name: "SonoDesign",
      targets: ["SonoDesign"]
    )
  ],
  targets: [
    .target(
      name: "SonoDesign",
      dependencies: [],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "SonoDesignTests",
      dependencies: ["SonoDesign"]
    )
  ]
)
