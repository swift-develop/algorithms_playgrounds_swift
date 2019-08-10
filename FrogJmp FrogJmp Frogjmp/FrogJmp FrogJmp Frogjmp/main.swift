//
//  main.swift
//  FrogJmp FrogJmp Frogjmp
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    

    
    let distance = Y - X
    let jumps = distance % D == 0 ? distance / D : distance / D + 1
    
    return jumps
}


let X = 10, Y = 21 , D = 5


let r = solution(X, Y, D)

print( r )
