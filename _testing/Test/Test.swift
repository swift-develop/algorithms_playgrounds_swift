//
//  Test.swift
//  Test
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import XCTest

class Test: XCTestCase {

    //------generate random array-------->
    
    static let UPPER = 1000000// 100,000,000
    static let LOWER = 1
    
    static let A1 : [Int] = {
        let lower = 1
        let r = 1...9
        var temp = [Int]()
        
        for _ in Test.LOWER...Test.UPPER {
            let random = Int.random(in: r )
            temp.append( random )
        }
        return temp }()
    
    //------generate random array-------->
    
    let sample = A1
    let a = 1
    let b = 3
    
    let s = Solution()
    
    var r = [Int]()
    
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
            r = s.arrayReplace(inputArray: sample, elemToReplace: a, substitutionElem: b)
        }
        print ( r.hashValue )
    }

    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        measure {
            r = s.arrayReplace_map(inputArray: sample, elemToReplace: a, substitutionElem: b)
        }
        print ( r.hashValue )
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        measure {
            r = s.arrayReplace(inputArray: sample, elemToReplace: a, substitutionElem: b)
        }
        print ( r.hashValue )
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        measure {
            r = s.arrayReplace_map(inputArray: sample, elemToReplace: a, substitutionElem: b)
        }
        print ( r.hashValue )
    }
}
