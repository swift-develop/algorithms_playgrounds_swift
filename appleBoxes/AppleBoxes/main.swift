//
//  main.swift
//  AppleBoxes
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func appleBoxes(k: Int) -> Int {
    
//    let yellowApples = 0
//    let redApples = 0
    

    
//    for boxSize in 1...k {
//
//        let NumberApplesInBox = ( boxSize * boxSize )
//
//        apples += boxSize % 2 == 0 ? NumberApplesInBox : -NumberApplesInBox
//    }
    
    
    //return (1...k).reduce(0) { $0 + ( $1 * $1 ) * (( $1 % 2 == 0 ) ? 1 : -1 ) }
    
    return k * (k + 1) / ((k % 2 == 0) ? 2 : -2)
}


let k = 5


let r = appleBoxes(k: k)

print( r )
