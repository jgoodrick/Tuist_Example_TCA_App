import ProjectDescription

let project = Project(
    name: "ExampleTCA",
    targets: [
        .target(
            name: "ExampleTCA",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ExampleTCA",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["ExampleTCA/Sources/**"],
            resources: ["ExampleTCA/Resources/**"],
            dependencies: [
                .external(name: "ComposableArchitecture", condition: .none),
            ]
        ),
        .target(
            name: "ExampleTCATests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ExampleTCATests",
            infoPlist: .default,
            sources: ["ExampleTCA/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ExampleTCA")]
        ),
    ]
)
