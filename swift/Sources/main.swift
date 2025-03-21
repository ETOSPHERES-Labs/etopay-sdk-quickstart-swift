// The Swift Programming Language
// https://docs.swift.org/swift-book

import ETOPaySdk

let sdk = ETOPaySdk()

print("Build Info:")
print(sdk.getBuildInfo().toString())
