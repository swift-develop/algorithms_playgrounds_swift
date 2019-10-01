//
//  main.swift
//  differentSquares
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func differentSquares(matrix: [[Int]]) -> Int {
    
    let width = matrix.count
    let height = matrix[0].count
    
    var set = Set<String>()
    
    for w in 0..<width - 1  {
        for h in 0..<height - 1 {
            let tl = matrix[w+0][h+0],
                tr = matrix[w+1][h+0],
                bl = matrix[w+0][h+1],
                br = matrix[w+1][h+1]
            
            set.insert("\(tl)\(tr)\(bl)\(br)")
        }
    }
    
    return set.count
}

let matrix = [[1,2,1],
[2,2,2],
[2,2,2],
[1,2,3],
[2,2,1]]

let r = differentSquares(matrix:matrix)

print( r )




func differentSquares2(matrix m: [[Int]]) -> Int {
    return Set( (1 ..< m.count).flatMap{ i in
        (1 ..< m[0].count).map{ j in
            m[i-1 ... i].map{ $0[j-1 ... j] }
        }
    }).count
}

print( differentSquares2(matrix: matrix ) )

func numberOfEvenDigits(n: Int) -> Int {
    let nums = Array(String(n)).map({ (c) in Int(String(c)) ?? 0 } ).filter({ $0 % 2 == 0 })
    return nums.count
}


let r1 = numberOfEvenDigits(n: 1010)
print( r1 )
