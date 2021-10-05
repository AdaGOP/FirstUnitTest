//
//  Makes10TestCase.swift
//  FirstUnitTestTests
//
//  Created by khoirunnisa' rizky noor fatimah on 05/10/21.
//

import XCTest
@testable import FirstUnitTest

/*[]========================================================================[]
 function: makes10
 input: given two ints, a and b
 output: return true if one of them is 10 or if their sum is 10.
 []========================================================================[]*/

class Makes10TestCase: XCTestCase {
    
    let functionClass = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMakes10_01() throws {
        XCTAssertEqual(functionClass.makes10(a: 9, b: 10), true)
    }
    
    func testMakes10_02() throws {
        XCTAssertEqual(functionClass.makes10(a: 9, b: 9), false)
    }
    
    func testMakes10_03() throws {
        XCTAssertEqual(functionClass.makes10(a: 1, b: 9), true)
    }
    
    func testMakes10_04() throws {
        XCTAssertEqual(functionClass.makes10(a: 10, b: 1), true)
    }
    
    func testMakes10_05() throws {
        XCTAssertEqual(functionClass.makes10(a: 8, b: 2), true)
    }
    
    func testMakes10_06() throws {
        XCTAssertEqual(functionClass.makes10(a: 10, b: 10), true)
    }
    
    func testMakes10_07() throws {
        XCTAssertEqual(functionClass.makes10(a: 8, b: 3), false)
    }
    
    func testMakes10_08() throws {
        XCTAssertEqual(functionClass.makes10(a: 10, b: 3), true)
    }
    
    func testMakes10_09() throws {
        XCTAssertEqual(functionClass.makes10(a: 1, b: 3), false)
    }
    
    func testMakes10_10() throws {
        XCTAssertEqual(functionClass.makes10(a: 13, b: -3), true)
    }

}
