// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "OPML",
	platforms: [
		.macOS(.v11),
		.iOS(.v13),
		.tvOS(.v13),
	],
	products: [
		.library(name: "OPML", targets: ["OPML"])
	],
	dependencies: [
		.package(url: "https://github.com/JustinMeans/pfc-swift-html", branch: "main")
	],
	targets: [
		.target(name: "OPML", dependencies: [
			.product(name: "PFCHtml", package: "pfc-swift-html")
		]),
		.testTarget(
			name: "Tests",
			dependencies: ["OPML"]
		)
	]
)
