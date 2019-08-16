//
//  main.swift
//  sudoku
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func sudoku(grid: [[Int]]) -> Bool {
    var s1 : Set<Int> = [], s2 : Set<Int> = []
    //check rows
    for x in 0..<grid.count {
        s1 = []
        s2 = []
        for y in 0..<grid.count {
            s1.insert(grid[x][y])
            s2.insert(grid[y][x])
            //special grid test
            //if x.isMultiple(of: 3), y.isMultiple(of: 3) {
            if x % 3 == 0, y % 3 == 0{
                let s3 : Set<Int> = [ grid[x][y],grid[x][y+1],grid[x][y+2],grid[x+1][y],grid[x+1][y+1],grid[x+1][y+2],grid[x+2][y],grid[x+2][y+1],grid[x+2][y+2], ]
                if s3.count < grid.count { return false }
            }
        }
        if s1.count < grid.count || s2.count < grid.count { return false }
    }
    return true
}

let board = [[1,3,2,5,4,6,9,8,7],
             [4,6,5,8,7,9,3,2,1],
             [7,9,8,2,1,3,6,5,4],
             [9,2,1,4,3,5,8,7,6],
             [3,5,4,7,6,8,2,1,9],
             [6,8,7,1,9,2,5,4,3],
             [5,7,6,9,8,1,4,3,2],
             [2,4,3,6,5,7,1,9,8],
             [8,1,9,3,2,4,7,6,5]]


let r = sudoku(grid: board)

print( r )
