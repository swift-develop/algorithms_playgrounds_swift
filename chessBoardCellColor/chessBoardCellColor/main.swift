//
//  main.swift
//  chessBoardCellColor
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
    
    let charOffset = "A".utf8.first! - 1
    
    guard let col1  = cell1.utf8.first! - charOffset
        
//          let row1 = cell1.utf8.last! - charOffset,
//          let col1 = cell2.utf8.first! - charOffset,
//          let row1 = cell2.utf8.last! - charOffset
    
    
    else {
        return false
    }
    
//    print( col1, charOffset, col1 - charOffset )
    print( type(of: col1 ))
    
    return false
    
}


let r = chessBoardCellColor(cell1: "A1", cell2: "A2" )


print( r )
