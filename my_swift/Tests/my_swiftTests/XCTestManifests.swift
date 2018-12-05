import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(my_swiftTests.allTests),
    ]
}
#endif