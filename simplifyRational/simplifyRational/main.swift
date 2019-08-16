//
//  main.swift
//  simplifyRational
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func simplifyRational(numerator: Int, denominator: Int) -> [Int] {
    
    guard numerator != 0 else { return [0, 1] }
    
    if abs(numerator) > 1 || denominator == 0 {
        for m in 2...abs(numerator) {
            if numerator % m == 00 && denominator % m == 0 {
                return simplifyRational(numerator: numerator/m, denominator: denominator/m)
            }
        }
    }
    
    //pretty
    if denominator < 0 {
        return [numerator * -1, denominator * -1]
    }
    
    return [numerator, denominator]
}



print(simplifyRational(numerator: 8, denominator: -5) )
