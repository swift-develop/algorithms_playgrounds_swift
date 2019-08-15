//
//  main.swift
//  differentSquares
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func differentSquares(matrix: [[Int]]) -> Int {
    
    var set : Set<[Int]> = []
    
    for i in 0..<matrix.count - 1 {
        
        for j in 0..<matrix[i].count - 1 {
            
            let p1 = matrix[i][j]
            let p2 = matrix[i+1][j]
            let p3 = matrix[i][j+1]
            let p4 = matrix[i+1][j+1]
            
            let p = [p1,p2,p3,p4]
            
            set.update(with: p )
        }
        
    }
    return set.count
}

let matrix =   [[1,2,1],
                [2,2,2],
                [2,2,2],
                [1,2,3],
                [2,2,1]]

let r = differentSquares(matrix: matrix )

print( r )
