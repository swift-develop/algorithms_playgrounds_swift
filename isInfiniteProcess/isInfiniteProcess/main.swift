//
//  main.swift
//  isInfiniteProcess
//
//  Created by Tom Grant on 8/18/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isInfiniteProcess(a: Int, b: Int) -> Bool {
    var loopBreak = 0
    var a1 = a, b1 = b
    while a1 != b1, loopBreak < 10 {
        a1 += 1
        b1 -= 1
        loopBreak += 1
        print( a1, b1, a1 == b1 )
    }
    
//    if a == b { return false}
//    else if a > b { return true }
//    else if ( b - a) % 2 == 0 { return false }
    
    
    
    return a != b && ( b < a || ( b - a) % 2 != 0 )
    
    return true
}

let a = 2
let b = 3


print( isInfiniteProcess(a: a, b: b))
