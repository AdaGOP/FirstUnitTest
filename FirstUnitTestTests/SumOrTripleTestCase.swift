//
//  SumOrTripleTestCase.swift
//  FirstUnitTestTests
//
//  Created by khoirunnisa' rizky noor fatimah on 05/10/21.
//

import XCTest
@testable import FirstUnitTest
/*[]========================================================================[]
    function: sum_or_triple_sum
    input: two integers a and b
    output: compute the sum of two integers,
            if the values are equal return the triple their sum
[]========================================================================[]*/

class SumOrTripleTestCase: XCTestCase {
    let functionClass = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSumOrTriple01() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 1, b: 2), 3)
    }
        
    func testSumOrTriple02() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 3, b: 2), 5)
    }
    
    func testSumOrTriple03() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 2, b: 2), 12)
    }
    
    func testSumOrTriple04() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 3, b: 3), 18)
    }
    
    func testSumOrTriple05() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 3, b: 4), 7)
    }

    func testSumOrTriple06() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 1, b: 1), 6)
    }
    
    func testSumOrTriple07() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 4, b: 5), 9)
    }
    
    func testSumOrTriple08() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 5, b: 5), 30)
    }
    
    func testSumOrTriple09() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 6, b: 5), 11)
    }

    func testSumOrTriple10() throws {
        XCTAssertEqual(functionClass.sum_or_triple_sum(a: 6, b: 7), 13)
    }

}
