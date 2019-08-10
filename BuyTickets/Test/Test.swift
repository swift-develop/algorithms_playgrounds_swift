//
//  Test.swift
//  Test
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import XCTest

class Test: XCTestCase {
    
    var s:Solutions = Solutions()
    
    var result:Any = ""

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
    
    
    static let P : Int  = {
        let r = 0..<Test.UPPER
        return Int.random(in: r )
    }()
    
    let a1 = Test.A1
    let p = Test.P
    
    
    override func setUp() {
        let _ = (a1, p)
//        print( Test.a1, Test.p )
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testBench0 () {
        measure {
            result = s.asWhile(tickets: [1,2,3,4,5,6,7,8,9,10], p: 0)
            //
        }
        print("result = ", result )
    }
    
    
    func testBench1() {
        
        measure {
            result = s.waitingTime( tickets: a1, p: p)
            
        }
        print( result )
    }
    
    func testBench2() {
        measure {
            result = s.proof(tickets: a1, p: p)
            
        }
       print("result = ", result )
        
    }
    
    func testBench3() {
        measure { result = s.fast(tickets: a1, p: p) }
        print("result = ", result )
    }
    
    
    func testBench4() {
        measure {
            result = s.faster(tickets: a1, p: p)
            //
        }
       print("result = ", result )
    }
    
    func testBench5() {
        measure {
            result = s.fasterMaybe(tickets: a1, p: p)
            //
        }
        print("result = ", result )
    }
    
    func testBench6() {
        measure {
            result = s.fasterImprovement(tickets: a1, p: p)
            //
        }
        print("result = ", result )
    }
    
    func testBench7() {
        measure {
            result = s.fasterGreased(tickets: a1, p: p)
            //
        }
        print("result = ", result )
    }
    
    func testBench8() {
        measure {
            result = s.fasterGreased(tickets: a1, p: p)
            //
        }
        print("result = ", result )
    }
    
    func testBench9 () {
        measure {
            result = s.asWhile(tickets: a1, p: p)
            //
        }
        print("result = ", result )
    }
}
