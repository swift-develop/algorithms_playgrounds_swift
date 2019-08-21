//
//  main.swift
//  mirrorBits
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func mirrorBits(a: Int) -> Int {
    
    return Int(strtoul(String(String( a, radix: 2).reversed()), nil, 2))
}


let a = 97


print( mirrorBits(a: a) )
