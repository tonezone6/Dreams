// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DreamsDesign",
  platforms: [.iOS(.v16)],
  products: [
    .library(
      name: "DreamsDesign",
      targets: ["DreamsDesign"]
    )
  ],
  targets: [
    .target(
      name: "DreamsDesign",
      dependencies: [],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "DreamsDesignTests",
      dependencies: ["DreamsDesign"]
    )
  ]
)
