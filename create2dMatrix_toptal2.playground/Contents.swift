import UIKit

var str = "Hello, playground"



func returnMatrix ( _ U: Int, _ L: Int, _ C: [Int] ) -> String {
    
    var C = C
    
    var upperValue = 0
    var lowerValue = 0
    
    var D = [Int]()
    
    //Shift all the twos
    for num in C.enumerated() {
        let element = num.element
        let offset = num.offset
        //print( element )
        if element == 2 {
            C[offset] = 1
            D.append( 1 )
            upperValue += 1
            lowerValue += 1
        } else if element == 1 {
            upperValue += 1
            D.append( 0 )
        } else {
            D.append( 0 )
        }
    }

    for num in C.enumerated() {
        if U == upperValue && L == lowerValue {
            break
        } else if num.element == 1 && D[ num.offset ] == 0 {
            C[num.offset] = 0
            D[num.offset] = 1
            
            upperValue -= 1
            lowerValue += 1
        }
    }
    
    let temp1 = C.map { String( $0 ) }.joined() + ", " + D.map { String( $0 ) }.joined()
    

    
    return temp1
}

let U = 3
let L = 2
let C = [2,1,1,0,1]
var r = ""

let closure = {
    r = returnMatrix ( U, L, C )
}

import XCTest
class BenchMakrTest: XCTestCase {

    let interations = 1000
    
    func test1() {
        measure {
            for _ in 0...interations { closure() }
        }
        print( r )
    }

    func test2() {
        measure {
            for _ in 0...interations { closure() }
        }
        print( r )
    }
    func test3() {
        measure {
            for _ in 0...interations { closure() }
        }
        print( r )
    }
    func test4() {
        measure {
            for _ in 0...interations { closure() }
        }
        print( r )
    }
}


BenchMakrTest.defaultTestSuite.run()
