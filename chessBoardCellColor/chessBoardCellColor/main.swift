//
//  main.swift
//  chessBoardCellColor
//
//  Created by Tom Grant on 8/11/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation



func chessBoardCellColor(cell1: String, cell2: String) -> Bool {

    guard let a = cell1.utf8.first,let b = cell1.utf8.last,let c = cell2.utf8.first,let d = cell2.utf8.last else { return false }
    return ( a + b + c + d ) % 2 == 0 ? true  : false
}


let r = chessBoardCellColor(cell1: "A1", cell2: "C3")
print( r)



print( (1 + 3) % 2 )
