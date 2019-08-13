//
//  main.swift
//  knapsackLight
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
    
    guard weight1 <= maxW || weight2 <= maxW else { return 0 }
    
    if weight1 + weight2 <= maxW { return value1 + value2 }
    
    if weight1 <= maxW && weight2 <= maxW { return max(value1, value2 )}
    
    if weight1 > weight2 { return value2 }


    
    
    
    return value1
    
}


let value1 = 2
let weight1 = 5
let value2 = 3
let weight2 = 4
let maxW = 5



let result = knapsackLight(value1: value1, weight1: weight1, value2: value2, weight2: weight2, maxW: maxW)

print( result )
