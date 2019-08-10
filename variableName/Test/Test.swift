//
//  Test.swift
//  Test
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import XCTest

class Test: XCTestCase {

    let s = Solution()
    var r:Any = 0
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample0() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        measure {
            r = s.variableName(name: "Sample123")
        }
        print ( r )
    }
}
