import ProjectDescription

let project = Project(
	name: "TuistSample",
	packages: [
		.remote(url: "https://github.com/hmlongco/Resolver.git", requirement: .exact("1.5.0"))
	],
	targets: [
		.init(
			name: "App",
			platform: .iOS,
			product: .app,
			bundleId: "tech.klememi.tuistSample",
			sources: "TuistSample/**",
			dependencies: [
				.target(name: "Framework"),
				.package(product: "Resolver-Dynamic")
			]
		),
		.init(
			name: "Framework",
			platform: .iOS,
			product: .framework,
			bundleId: "tech.klememi.tuistSampleFramework",
			sources: "Framework/**",
			dependencies: [
				.package(product: "Resolver-Dynamic")
			]
		)
	]
)
