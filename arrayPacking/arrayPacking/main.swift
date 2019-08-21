//
//  main.swift
//  arrayPacking
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func arrayPacking(a: [Int]) -> Int {
    var sum = 0
    for (i, e) in a.enumerated() {
        sum += e << 8 * i
    }
    
    return a.enumerated().reduce(0) {$0 + ( $1.1 << ($1.0 * 8) )}
}

let a = [24, 85, 0]

print( arrayPacking(a: a) )


