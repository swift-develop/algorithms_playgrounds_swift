//
//  main.swift
//  secondRightmostZeroBit
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func s( _ n : Int )  {
    print( String( n, radix: 2 ))
}

func secondRightmostZeroBit(n: Int) -> Int {
    
    
    let k = n | (n + 1)

    
    let k2 = ~(n|(n+1)) & ((n|(n+1))+1)
    
    
    s( n )
    s( n + 1)
    s( k )
    
    s( ~k )
    s( k + 1 )
    
    s( k2 )
    
    
    return k2
}


let n = 37

print( secondRightmostZeroBit(n: n) )
