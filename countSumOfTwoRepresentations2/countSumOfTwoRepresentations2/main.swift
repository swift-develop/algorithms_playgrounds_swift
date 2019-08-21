//
//  main.swift
//  countSumOfTwoRepresentations2
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func countSumOfTwoRepresentations2(n: Int, l: Int, r: Int) -> Int {
    
    var count = 0
    let range = l...r
    
    for i in range {
        
        if n - i - i == 0 {
            count += 1
        } else if n - i <= r && n - i > i {
            print( i, n - i )
            count += 1
        }
    }
    
    
    return count
}


let n = 6
let l = 2
let r = 4

let result = countSumOfTwoRepresentations2(n: n, l: l, r: r)

print( result )
