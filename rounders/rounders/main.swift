//
//  main.swift
//  rounders
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func rounders(n: Int) -> Int {
    
    var count = 1
    var n = n
    repeat {
        let carry = n % 10 >= 5 ? 1 : 0
        n /= 10
        n += carry
        count += 1
    } while n > 10
    
    n *= Int( pow( 10.0, Double(count - 1) ) )
    
    return n == 0 ? 1 : n
}


let n = 1

let result = rounders(n:n)

print( result )
