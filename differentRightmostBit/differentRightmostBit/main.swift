//
//  main.swift
//  differentRightmostBit
//
//  Created by Tom Grant on 9/6/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func bin( _ n: Int ) {
    print( String(n, radix: 2) )
}

func differentRightmostBit(n: Int, m : Int) -> Int {
    
    bin(n)
    bin(m)
    
    print(">>>>>>>>")
    
    bin( n^m )
    
    let xor = n^m
    
    let xor2 = ~(-xor+1)
    
    bin( xor2 )
    
    print("combine")
    
    bin( xor & xor2)
    
    return (n^m) & -(n^m)
}

let r = differentRightmostBit( n: 11, m: 13)
print( r )
