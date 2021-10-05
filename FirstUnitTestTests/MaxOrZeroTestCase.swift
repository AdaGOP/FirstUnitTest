//
//  MaxOrZeroTestCase.swift
//  FirstUnitTestTests
//
//  Created by khoirunnisa' rizky noor fatimah on 05/10/21.
//

import XCTest
@testable import FirstUnitTest

/*[]========================================================================[]
 function: max_or_zero
 input: given two ints, a and b
 output: return the largest one, except if they are equal return 0
 []========================================================================[]*/

class MaxOrZeroTestCase: XCTestCase {
    let functionClass = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMaxOrZero01() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 9, b: 10), 10)
    }
    
    func testMaxOrZero02() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 19, b: 10), 19)
    }
    
    func testMaxOrZero03() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 10, b: 10), 0)
    }
    
    func testMaxOrZero04() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 9, b: 8), 9)
    }
    
    func testMaxOrZero05() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 9, b: 1), 9)
    }
    
    func testMaxOrZero06() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 6, b: 5), 6)
    }
    
    func testMaxOrZero07() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 5, b: 5), 0)
    }
    
    func testMaxOrZero08() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 7, b: 8), 8)
    }
    
    func testMaxOrZero09() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 6, b: 7), 7)
    }
    
    func testMaxOrZero10() throws {
        XCTAssertEqual(functionClass.max_or_zero(a: 8, b: 10), 10)
    }

}
