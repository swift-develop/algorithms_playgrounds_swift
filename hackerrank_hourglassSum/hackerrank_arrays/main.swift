//
//  main.swift
//  hackerrank_arrays
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


func hourglassSum(arr: [[Int]]) -> Int {
    
    
    let mask = [(0,0),(0,1),(0,2),
                (1,1),
                (2,0),(2,1),(2,2)]
    
    let maskD = 3
    var sum = Int.min
    let range = 0...arr.count - maskD
    
    for h in range {
        print( h )
        for w in range {
            
            let tempSum = mask.reduce( 0) { (sum , p ) in
                return sum + arr[p.0 + h][p.1 + w]
            }
            if tempSum > sum { sum = tempSum }
            //print( sum )
        }
        
    }
    
    return sum
}



//let sampel = [
//
//[-9, 1, 1, 9, 9, 9,],
//[0, 1, 0, 0, 9, 0,],
//[1, 1, 1, 9, 9, 4,],
//[9, 9, 9, 9, 9, 9,],
//[9, 9, 9, 2, 9, 0,],
//[7, 9, 9, 9, 9, 9,],
//
//]

let sampel = [[-1, -1, 0, -9, -2, -2],
    [-2, -1, -6, -8, -2, -5],
    [-1, -1, -1, -2, -3, -4],
    [-1, -9, -2, -4, -4, -5],
    [-7, -3, -3, -2, -9, -9],
    [-1, -3, -1, -2, -4, -5]]


let result = hourglassSum( arr: sampel )

print( result )

