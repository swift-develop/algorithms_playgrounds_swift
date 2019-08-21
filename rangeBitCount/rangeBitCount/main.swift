//
//  main.swift
//  rangeBitCount
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func rangeBitCount(a: Int, b: Int) -> Int {
    
    //wow swift lets you write almost unreadable code
    
    return (a...b).reduce(0) { $0 + String( $1, radix: 2).filter{ $0 == "1" }.count }
}

let a = 2
let b = 7

let r = rangeBitCount(a: a, b: b)

print( r )
