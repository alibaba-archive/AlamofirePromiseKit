# AlamofirePromiseKit

![](https://img.shields.io/cocoapods/v/AlamofirePromiseKit)

> Implement ‘Alamofire’ synchronous callback

## Requirements

* Alamofire ~> 4.9.1
* AwaitKit  ~> 5.2.0

## Installation

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `AlamofirePromiseKit` by adding the proper description to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    dependencies: [
        .Package(url: "https://github.com/aliyun/AlamofirePromiseKit.git")
    ]
)
```

Note that the [Swift Package Manager](https://swift.org/package-manager) is still in early design and development, for more information checkout its [GitHub Page](https://github.com/apple/swift-package-manager).

## Usage example

```swift
import Foundation
import Alamofire
import AwaitKit

let sessionManager:SessionManager = Alamofire.SessionManager(configuration: config)
let promise = sessionManager.request("https://httpbin.org/get", method: HTTPMethod.get).response()
let res: DefaultDataResponse = try! await(promise)
let result: String = String(data: res.data!, encoding: .utf8) ?? ""

print(result)
```
