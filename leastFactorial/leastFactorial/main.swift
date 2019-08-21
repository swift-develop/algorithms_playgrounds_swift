//
//  main.swift
//  leastFactorial
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func leastFactorial(n: Int) -> Int {
    
    var i = 2
    var fact = 1
    
    while fact < n{
        fact *= i
        i += 1
    }
    
    
    
    return fact
}


let n = 7

let r = leastFactorial(n: n)

print( r )
