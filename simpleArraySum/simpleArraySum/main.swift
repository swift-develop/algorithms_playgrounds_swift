//
//  main.swift
//  simpleArraySum
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    /*
     * Write your code here.
     */

    
    
    return ar.reduce(0) { $0 + $1 }
}

print( simpleArraySum(ar: Array( 1...36 ) ) )

let evil = Array( 1...36 ).reduce(0) { $0 + $1 }

