//
//  main.swift
//  magicalWell
//
//  Created by Tom Grant on 9/6/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func magicalWell(a: Int, b: Int, n: Int) -> Int {
    guard n > 0 else { return 0 }
    return ( a + (n-1) ) * ( b + (n-1) ) + magicalWell(a: a, b: b, n: n-1)
}

let a = 1
let b = 2
let c = 2


let r = magicalWell(a: a, b: b, n: c)
print( r )
