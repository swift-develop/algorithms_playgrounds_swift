//
//  main.swift
//  equalPairOfBits
//
//  Created by Tom Grant on 9/6/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


func bin( _ n: Int ) {
    print( String(n, radix: 2), n )
}

func equalPairOfBits(n: Int, m : Int) -> Int {
    
    bin( n )
    bin( m )
    print("result = >>>>>>>>>>>>>>>>>")
    let r1 = n&m
    bin( r1 )

    let n1 = Int(~UInt8( n ))
    let m1 = Int(~UInt8( m ))
    print(">>>>>>>>>>>>>>>>>")
    
    bin( n1 )
    bin( m1 )
    print("result = >>>>>>>>>>>>>>>>>")
    
    let r2 = n1&m1
    
    return ~(n^m) & ((n^m) + 1)
}


let r = equalPairOfBits(n: 28, m: 27)
print( r )
