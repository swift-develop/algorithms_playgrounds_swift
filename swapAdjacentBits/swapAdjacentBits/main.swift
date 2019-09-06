//
//  main.swift
//  swapAdjacentBits
//
//  Created by Tom Grant on 9/6/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func bp ( _ n: Int ) {
    
    print( String(n, radix: 2 ) )
}

func swapAdjacentBits(n: Int) -> Int {
    
    
    
    
    return  (n & 0x15555555) << 1 + (n & 0x2AAAAAAA) >> 1
}



print( swapAdjacentBits( n: 13 ) )
