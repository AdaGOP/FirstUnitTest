//
//  LogicalMoving.swift
//  FirstUnitTestTests
//
//  Created by khoirunnisa' rizky noor fatimah on 05/10/21.
//

import XCTest
@testable import FirstUnitTest

/*[]========================================================================[]
    function: moving
    input: initial_location, list of steps
    output: starting at (0,0) following the list of steps
            return final location
 
    A step .Up will increase the y coordinate by 1.
    A step .Down will decrease the y coordinate by 1.
    A step .Right will increase the x coordinate by 1.
    A step .Left will decrease the x coordinate by 1.
[]========================================================================[]*/

class MovingTestCase: XCTestCase {
    var functionClass = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMoving01() throws {
        let final_location = functionClass.moving(initial_location: (x: 0, y: 0), [.up, .up, .left, .down, .left])
        XCTAssert(final_location == (x:-2, y: 1), "obtained \(final_location)")
    }
    
    func testMoving02() throws {
        let final_location = functionClass.moving(initial_location: (x: 5, y: 2), [.up, .right, .up, .right, .up,
        .right, .down, .right])
        XCTAssert(final_location == (x:9, y: 4), "obtained \(final_location)")
    }
    
    func testMoving03() throws {
        let final_location = functionClass.moving(initial_location: (x: 0, y: 0), [.up, .up, .left, .down, .left, .down, .down, .right, .right, .down, .right])
        XCTAssert(final_location == (x:1, y: -2), "obtained \(final_location)")
    }
    
    func testMoving04() throws {
        let final_location = functionClass.moving(initial_location: (x: 0, y: 0), [.up, .up, .up, .up, .left, .left])
        XCTAssert(final_location == (x:-2, y: 4), "obtained \(final_location)")
    }
      
    func testMoving05() throws {
        let final_location = functionClass.moving(initial_location: (x: 0, y: 0), [.down, .down, .up, .up, .left, .right, .right])
        XCTAssert(final_location == (x:1, y: 0), "obtained \(final_location)")
    }


}
