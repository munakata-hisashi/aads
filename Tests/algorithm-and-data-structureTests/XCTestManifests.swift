import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(algorithm_and_data_structureTests.allTests),
    ]
}
#endif
