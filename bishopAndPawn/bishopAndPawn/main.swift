//
//  main.swift
//  bishopAndPawn
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func bishopAndPawn(bishop: String, pawn: String) -> Bool {
    
    let w1 = Int( bishop.utf8.first! - 96 )
    let h1 = Int( bishop.utf8.last! - 48 )
 
    let w2 = Int( pawn.utf8.first! - 96 )
    let h2 = Int( pawn.utf8.last! - 48 )
    
    
    let rise = abs( h1 - h2 )
    let run  = abs( w1 - w2 )
    
    
    print( w1, h1, w2, h2, rise, run )
    
    return rise - run == 0 
}




let bishop = "a1"
let pawn = "c3"


let result = bishopAndPawn( bishop: bishop, pawn: pawn )

print( result )
