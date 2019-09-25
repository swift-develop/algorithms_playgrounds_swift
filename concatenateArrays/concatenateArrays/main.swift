//
//  main.swift
//  concatenateArrays
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func concatenateArrays(a: [Int], b: [Int]) -> [Int] {

    return a + b
}


let a = [2, 2, 1]
let b = [10, 11]

let answer = concatenateArrays(a: a, b: b)
print( answer )
