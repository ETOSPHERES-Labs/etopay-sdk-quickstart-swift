# ETOPay SDK Quickstart for Swift

[![ci](https://github.com/ETOSPHERES-Labs/etopay-sdk-quickstart-swift/actions/workflows/ci.yml/badge.svg)](https://github.com/ETOSPHERES-Labs/etopay-sdk-quickstart-swift/actions/workflows/ci.yml)

The [ETOPay SDK](https://github.com/ETOSPHERES-Labs/etopay-sdk) for swift is hosted as a Swift Package in the [@ETOSPHERES-Labs/etopay-sdk-swift](https://github.com/ETOSPHERES-Labs/etopay-sdk-swift) repository.

We provide binaries for the following platforms:

- `aarch64-apple-ios`: targets 64-bit ARM processors for iOS devices like iPhones and iPads.
- `x86_64-apple-ios`: for 64-bit Intel processors for iOS simulators.
- `aarch64-apple-ios-sim`: for 64-bit ARM processors running iOS simulators, typically used on Apple Silicon Macs.
- `aarch64-apple-darwin`: for 64-bit ARM processors on macOS systems (eg. M1).
- `x86_64-apple-darwin`: for 64-bit Intel processors on macOS systems.

## Using [Swift Package Manager](./swift)

Using the Swift Package Manager, simply provide the path to the GitHub repository and select which version to use. Add the repository as a `dependency` in your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "program",
    dependencies: [
        // follow a released version (a tag)
        .package(url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift", from: "0.14.0")
        // alternatively you can follow the nightly snapshot releases
        .package(url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift", revision: "nightly")
    ],
    targets: [
        .executableTarget(
            name: "main",
            dependencies: [
                .product(name: "ETOPaySdk", package: "etopay-sdk-swift")
            ]),
    ]
)
```

The `ETOPaySdk` module will then be available for import in your project.

## Using [XCode](./xcode)

In XCode, go to _File -> Add Package Dependencies_. In the top right search box, enter the url of the GitHub repository (`https://github.com/ETOSPHERES-Labs/etopay-sdk-swift`) and select the ETOPay SDK when it appears in the list.
Select _Add Package_ and follow the on-screen instructions.


## Minimum Supported Version

- **swift-tools** - `5.8`
- **swiftlang**- `swiftlang-6.0.3`
- **iOS** - `13`

