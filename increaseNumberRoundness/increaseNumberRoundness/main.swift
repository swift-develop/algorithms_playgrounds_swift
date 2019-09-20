//
//  main.swift
//  increaseNumberRoundness
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

print("Hello, World!")

func increaseNumberRoundness(n: Int) -> Bool {
    
    return n % 10 == 0 ? increaseNumberRoundness( n: n / 10) :String( n ).contains("0")
}

let n = 1022220
let r = increaseNumberRoundness(n:n)

print( r )
