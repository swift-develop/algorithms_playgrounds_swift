import UIKit
import PlaygroundSupport

var str = "Hello, playground"



var a = [1,2,3,4,5]

if let inx = a.firstIndex(where:  { (x) -> Bool in x == 3 } ) {
    print( inx )
    print( type(of: inx ) )
}


let c = [1,2,3]
let d = c.map { $0 }

d

extension Array {
    func copy <T> ( _ function: (Element) -> T ) ->[T] {
        var result:[T] = []
        for x in self {
            result.append( function(x) )
        }
        return result
    }
}

d.copy { x in
    x
}


var numbers = [9,8,7,6,5,4,3,2,1,2,2,2,1,1,3,2,2 ].shuffled()
let p = numbers.partition(by: { $0 > 5 })
let first = numbers[..<p]
let second = numbers[p...]

// p == 5
// numbers == [30, 10, 20, 30, 30, 60, 40]

p
numbers


let f = [1,2,1,9,1]
let g = [1,2,1]

print(f.lexicographicallyPrecedes(g))
// Prints "true"
print(g.lexicographicallyPrecedes(f))
// Prints "false"













