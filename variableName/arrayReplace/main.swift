//
//  main.swift
//  arrayReplace
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {

func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    
    var r = inputArray
    for (i,e) in r.enumerated() {
        if e == elemToReplace {
            r[i] = substitutionElem
        }
        
    }
    
    return r
}

func arrayReplace_map(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int]
{
    return inputArray.map{$0 == elemToReplace ? substitutionElem : $0 }
}
    
}





//let sample = [1, 2, 1]
//let a = 1
//let b = 3
//
//let r = arrayReplace(inputArray: sample, elemToReplace: a, substitutionElem: b)
//
//print( r )
