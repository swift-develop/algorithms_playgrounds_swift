import PlaygroundSupport






var p = 0
//print( a1 )

a1 = [1,3,1,1]

a1 = [ 2, 6, 3, 4, 5 ]
p = 2

//let tickets = [Int]()
var tickets = a1
//



var result = 0

//let r = waitingTime( tickets: tickets, p: p)
//result = proof(tickets: tickets, p: p)
//print( "brute force result", result )
//result = faster(tickets: tickets, p: p)
//print( "faster result", result )


//print( r, r1 )


import XCTest

class Tests: XCTestCase {
    
    var iterations = 1
    var result = 0
//    func testBench1() {
//
//        measure {
//            result = waitingTime( tickets: tickets, p: p)
//
//        }
//        print( result )
//    }
//
//    func testBench2() {
//        measure {
//            result = proof(tickets: tickets, p: p)
//
//        }
//        print( result )
//
//    }
    //no array manipulation...
//    func testBench3() {
//        measure { result = fast(tickets: tickets, p: p) }
//        print( result )
//    }

    func testBench4() {
//        measure {
            result = faster(tickets: tickets, p: p)
//
//        }
        print( result )
    }
    
}

//Tests.defaultTestSuite.run()





