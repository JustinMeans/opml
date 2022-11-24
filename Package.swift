// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "OPML",
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
