//
//  test.swift
//  test
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import XCTest

class Test: XCTestCase {

    let s = Solution()
    
    static let UPPER = 10000000// 100,000,000
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
    
    let k = Int.random(in: 0...9 )
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testPerformanceExample0() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }


    func testPerformanceExample1() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            s.extractEachKth(inputArray: Test.A1, k: k)
        }
    }

    func testPerformanceExample2() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            s.extractEachKth_fast(inputArray: Test.A1, k: k)
        }
    }
    
    
}
