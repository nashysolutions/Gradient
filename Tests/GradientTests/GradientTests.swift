import XCTest
@testable import Gradient

final class GradientTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Gradient().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
