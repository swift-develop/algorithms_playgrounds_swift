import UIKit

var str = "Hello, playground"



let l1 = Int.random(in: 0...10000 )
let r1 = 0...5
var a1 = [Int]()

for num in 0...l1 {
    print( num )
    
    let random = Int.random(in: r1 )
    a1.append( random )
}


print( a1 )
