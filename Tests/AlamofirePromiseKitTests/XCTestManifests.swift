import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AlamofirePromiseKitTests.allTests),
    ]
}
#endif
