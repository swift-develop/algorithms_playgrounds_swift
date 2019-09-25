//
//  main.swift
//  rectangleRotation
//
//  Created by Tom Grant on 9/24/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func rectangleRotation(a: Int, b: Int) -> Int {

    let a = Double(a)
    let b = Double(b)
    
    let pointsA = floor( sqrt( a * a / 2 ) )
    let pointsB = floor( sqrt( b * b / 2 ) )
    
    print( pointsA, pointsB)
    return Int(( pointsA * pointsB + floor(( pointsA + pointsB ) / 2)) * 2 + 1)
}


let a = 6
let b = 4

let r = rectangleRotation(a: a, b: b )

print( r )
