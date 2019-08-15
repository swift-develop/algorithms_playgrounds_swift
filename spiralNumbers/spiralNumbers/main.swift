//
//  main.swift
//  spiralNumbers
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func spiralNumbers(n: Int) -> [[Int]] {
    
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    let limit = n * n
    var directions = [ (x:+1,y:0),(x:0,y:+1),(x:-1,y:0),(x:0,y:-1) ]
    var cur = 0
    var d = directions[cur]
    

    var x = 0, y = 0
    var i = 1

    
    while i <= limit {
        matrix[y][x] = i
        let newX = x + d.x
        let newY = y + d.y
        if newX >= n || newY >= n || newX < 0 || newY < 0 || matrix[newY][newX] > 0 {
            if cur == directions.count - 1 {
                cur = 0
            } else {
                cur += 1
            }
            d = directions[cur]
        }
        x += d.x
        y += d.y
        i += 1
    }
    
    return matrix
}


let n = 3

let r = spiralNumbers(n: n)

print( r )
