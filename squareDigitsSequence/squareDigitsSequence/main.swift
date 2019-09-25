//
//  main.swift
//  squareDigitsSequence
//
//  Created by Tom Grant on 9/22/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func squareDigitsSequence(a0: Int) -> Int {
    var lastSum = a0
    var sumSet: Set = [a0]
    var insertionResult = (inserted:true, memberAfterInsert:0)
    
    repeat {
        lastSum = Array(String(lastSum)).map() { Int(String($0)) ?? 0}.reduce(0) { $0 + ($1 * $1) }
        insertionResult = sumSet.insert( lastSum )
    } while insertionResult.inserted
    return sumSet.count + 1
}

let a0 = 103
let r = squareDigitsSequence(a0: a0)

print( r )
