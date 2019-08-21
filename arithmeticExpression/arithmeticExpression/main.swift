//
//  main.swift
//  arithmeticExpression
//
//  Created by Tom Grant on 8/18/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func arithmeticExpression(a: Int, b: Int, c: Int) -> Bool {
//    let a = Double( a ), b = Double( b ), c = Double( c )
    return a + b == c || a - b == c || a * b == c || a == b * c 

}



let a = 8
let b = 3
let c = 2

print( arithmeticExpression(a: a, b: b, c: c))
