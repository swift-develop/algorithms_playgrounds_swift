//
//  main.swift
//  killKthBit
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func killKthBit(n: Int, k: Int) -> Int {
    
    
//    print( n, (1 << (k-1)), ~(1 << (k-1)) )
//    
//    let a = String( n, radix: 2)
//    let b = String( (1 << (k-1) ), radix: 2)
//    let c = String( ~(1 << (k-1) ), radix: 2)
//    let d = String( n & ~(1 << (k - 1)), radix: 2)
//    
//    print( a, b, c, d  )
    
    return  n & ~(1 << (k - 1))
    
}


print( killKthBit(n: 37, k: 1))
