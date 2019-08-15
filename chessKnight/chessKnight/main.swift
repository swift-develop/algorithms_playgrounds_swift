//
//  main.swift
//  chessKnight
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func chessKnight(cell: String) -> Int {
    
    let x = Int( cell.unicodeScalars.first?.value ?? 0 ) - 96
    guard let char1 = cell.unicodeScalars.first?.value, let x = Int(char1) - 96, x > 0, let char2 = cell.last, let y = Int(String(char2)) else { return 0 }
    
    let possibleMoves = [ (x:-1, y: 2),
                          (x: 1, y: 2),
                          (x:-2, y: 1),
                          (x: 2, y: 1),
                          (x:-2, y:-1),
                          (x: 2, y:-1),
                          (x:-1, y:-2),
                          (x: 1, y:-2)  ]
    
    var moves = 0
    for p in possibleMoves {
        
        let p1 = x - p.x
        let p2 = y - p.y
        
        if p1 > 0 && p2 > 0 && p1 < 9 && p2 < 9 {
            moves += 1
        }
        
    }
    
    return moves
}

let cell = "a1"

let result = chessKnight(cell: cell )

print( result )
