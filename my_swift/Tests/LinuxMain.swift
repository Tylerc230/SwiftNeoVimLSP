import XCTest

import my_swiftTests

var tests = [XCTestCaseEntry]()
tests += my_swiftTests.allTests()
XCTMain(tests)