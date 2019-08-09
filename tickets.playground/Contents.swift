import PlaygroundSupport

func waitingTime(tickets: [Int], p: Int) -> Int {
    
    guard tickets.count > 0 else {
        return 0
    }
    
    var tickets = tickets
    var alexPos = p
    var time = 0
    
    //    print( tickets )
    
    while tickets.count > 0 {
        //next turn
        time += 1
        //person goes to window
        var person = tickets.removeFirst()
        alexPos -= 1
        //take the money
        person -= 1
        
        //if they need more tickets, go to end of line
        if person > 0 {
            tickets.append( person )
        }
        
        //if alex is at the window, and the person at the window is out of money
        //game over
        if alexPos == -1 && person == 0 {
            return time
        }
        
        if alexPos < 0 {
            alexPos = tickets.count - 1
        }
        
    }
    return time
}



//this is a terrible brute force attempt, but at least i know the answer is right.
func proof(tickets: [Int], p: Int ) -> Int {
    var time = 0
    var ticketHolders = [ (TicketsNeeded: Int,  isAlex: Bool ) ]()

    for e in tickets.enumerated() {
      let th = (TicketsNeeded: e.element, isAlex: p == e.offset  )
        ticketHolders.append( th )
        
    }
    
    
    
    while ticketHolders.count > 0 {
        
        
//         print( ticketHolders, time  )
        //first person in line goes to counter
        var personHeadOfLine = ticketHolders.removeFirst()
        personHeadOfLine.TicketsNeeded -= 1
        time += 1
        
        if personHeadOfLine.TicketsNeeded > 0 {
            ticketHolders.append(personHeadOfLine)
        } else if personHeadOfLine.isAlex {
//            print("me alread", personHeadOfLine, time )
            return time
        }
        
//        print( time )
        
    }
    print("do i ever get here?")
    return time
}


func fast(tickets: [Int], p: Int ) -> Int {
    
    var ticketsAlexNeeds = tickets[p]
    
    var time = tickets[p]
    
    var peopleInFront = tickets[0..<p]
    var peopleInBack = tickets[(p+1)..<tickets.count]
    
    for num in peopleInFront {
        if num < tickets[p] { time += num }
        else { time += tickets[p] }
    }
    
    for num in peopleInBack {
        if num < tickets[p] { time += num }
        else { time += tickets[p] - 1}
    }
    
    return time
}

func faster(tickets: [Int], p: Int ) -> Int {
    var ticketsAlexNeeds = tickets[p]
    var time = ticketsAlexNeeds
    
    for (i, t) in tickets.enumerated() {
        if i == p {
            continue
        } else if t < ticketsAlexNeeds {
            time += t
        } else {
            time += i < p ? ticketsAlexNeeds : ticketsAlexNeeds - 1
        }
    }
    
    return time
}


let lower = 1
let upper = 10
let l1 = Int.random(in: lower...upper )
let r1 = 0...9
var a1 = [Int]()

for num in 0...l1 {
    let random = Int.random(in: r1 )
    a1.append( random )
}

var p = 0
//print( a1 )

a1 = [1,3,1,1]

a1 = [ 2, 6, 3, 4, 5 ]
p = 2

//let tickets = [Int]()
var tickets = a1
//var p = Int.random(in: 0..<tickets.count)



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

Tests.defaultTestSuite.run()





