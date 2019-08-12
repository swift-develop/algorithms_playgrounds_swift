//
//  test.swift
//  test
//
//  Created by Tom Grant on 8/11/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import XCTest

class test: XCTestCase {

    let s = Solution()
    
    let rate = 20
    let deposit = 100
    let threshold = 1000000000000000000
    
    var r = 0
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test0() {
        // This is an example of a performance test case.
            // Put the code you want to measure the time of here.
        r = s.depositProfit(deposit: 100, rate: 20, threshold: 170)
        
        print( r )
    }
    

    func test1() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            r = s.depositProfit(deposit: deposit, rate: rate, threshold: threshold)
        }
        
        print( r )
    }
    
    func test2() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            r = s.depositProfit_log(deposit: deposit, rate: rate, threshold: threshold)
        }
        
        print( r )
    }

}
