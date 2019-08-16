//
//  main.swift
//  sudoku2
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func sudoku2(grid: [[Character]]) -> Bool {
    
    for x in 0..<grid.count {
        
        var rSet: Set<Character> = []
        var cSet: Set<Character> = []
        var rCount = 0
        var cCount = 0
        for y in 0..<grid.count {
            let rItem = grid[x][y]
            let cItem = grid[y][x]
            if rItem != "." {
                rSet.insert( rItem )
                rCount += 1
            }
            
            if cItem != "." {
                cSet.insert( cItem )
                cCount += 1
            }
            
            
            //test special case
            if x % 3 == 0 && y % 3 == 0 {
                var sSet: Set<Character> = []
                var sCount = 0
                
                for ii in x..<x+3 {
                    for jj in y..<y+3 {
                        
                        let sItem = grid[ii][jj]
                        
                        if sItem != "." {
                            sSet.insert( sItem )
                            sCount += 1
                        }
                    }
                }
                
                if sSet.count != sCount {
                    return false
                }
            }
        }
        

        // test rows and collumns
        if rSet.count != rCount || cSet.count != cCount {
            return false
        }
    }
    return true
}



let grid : [[Character]] = [[".",".",".", "1","4",".", ".","2","."],
                            [".",".","6", ".",".",".", ".",".","."],
                            [".",".",".", ".",".",".", ".",".","."],
                           
                            [".",".","1", ".",".",".", ".",".","."],
                            [".","6","7", ".",".",".", ".",".","9"],
                            [".",".",".", ".",".",".", "8","1","."],
                           
                            [".","3",".", ".",".",".", ".",".","6"],
                            [".",".",".", ".",".","7", ".",".","."],
                            [".",".",".", "5",".",".", ".","7","."]]

let r = sudoku2(grid: grid )

print( r )



