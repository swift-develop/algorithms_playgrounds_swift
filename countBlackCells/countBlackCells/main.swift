//
//  main.swift
//  countBlackCells
//
//  Created by Tom Grant on 9/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func countBlackCells(n: Int, m: Int) -> Int {

//    If the line equation is 𝑦=𝑎𝑥+𝑏 and the coordinates of a point is (𝑥0,𝑦0) then compare 𝑦0 and 𝑎𝑥0+𝑏, for example if 𝑦0>𝑎𝑥0+𝑏 then the point is above the line, etc.
    let slope = Double(n) / Double(m)
 
    var  boxes = 0
    
    
    for x in 0..<m {
        for y in 0..<n {
            
        }
    }

    return boxes
    
}






let n = 2 //y
let m = 5 //x

let result = countBlackCells(n: n, m: m)

print( result )
print("==================================")

let result1 = countBlackCells(n: m, m: n)

print( result1 )
