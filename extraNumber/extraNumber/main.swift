//
//  main.swift
//  extraNumber
//
//  Created by Tom Grant on 8/18/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func extraNumber(a: Int, b: Int, c: Int) -> Int {
    
//    print( a ^ b )
//    print( a ^ c )
//    print( c ^ b  ^ a )
//
//    print( 5 ^ 2)
    
//    if a - b == 0 {
//        return c
//    } else if a - c == 0 {
//        return b
//    } else {
//        return a
//    }

    return a ^ b ^ c
}

let a = 2
let b = 7
let c = 2

print( extraNumber(a: a, b: b, c: c) )
