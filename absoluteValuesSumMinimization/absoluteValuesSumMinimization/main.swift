//
//  main.swift
//  absoluteValuesSumMinimization
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func absoluteValuesSumMinimization(a: [Int]) -> Int {
    
    var lowestSum = Int.max
    var lowestInput = Int.max
    
    
    for i in a {
        let x = i
        var sum = 0
        for j in a {
            sum += abs(j - x )
        }
        if ( sum < lowestSum ) {
            lowestSum = sum
            lowestInput = i
        }
    }
    
    return lowestInput
}

//fast
func absoluteValuesSumMinimization_fast(a: [Int]) -> Int {
    let index = (a.count-1)/2
    
    
    print( index )
    
    return a[ (a.count-1)/2 ]
}


let a = [1,2,3,10,11,12,13,14]

let result = absoluteValuesSumMinimization(a: a)
let r1 = absoluteValuesSumMinimization_fast(a : a)

print("----------------")
print( result )
print( r1 )
