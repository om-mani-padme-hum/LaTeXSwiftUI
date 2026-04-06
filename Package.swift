// swift-tools-version: 5.7
import PackageDescription

let package = Package(
  name: "LaTeXSwiftUI",
  platforms: [
    .iOS(.v16),
    .macOS(.v13),
    .tvOS(.v16)
  ],
  products: [
    .library(name: "LaTeXSwiftUI", targets: ["LaTeXSwiftUI"]),
  ],
  dependencies: [
     .package(url: "https://github.com/colinc86/MathJaxSwift", "3.4.0"..<"3.5.0"),
     .package(url: "https://github.com/om-mani-padme-hum/SVGView", branch: "main"),
     .package(url: "https://github.com/Kitura/swift-html-entities", from: "4.0.1")
  ],
  targets: [
    .target(
      name: "LaTeXSwiftUI",
      dependencies: [
        "MathJaxSwift",
        "SVGView",
        .product(name: "HTMLEntities", package: "swift-html-entities")
      ]),
    .testTarget(
      name: "LaTeXSwiftUITests",
      dependencies: ["LaTeXSwiftUI"]),
  ]
)
