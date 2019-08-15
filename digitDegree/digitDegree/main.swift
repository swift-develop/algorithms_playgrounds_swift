//
//  main.swift
//  digitDegree
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func digitDegree(n: Int) -> Int {
    guard n > 9 else { return 0 }
    
    
    var sum = n
    var i = 0
    while sum > 9 {
        
        let tempString = String(sum)
        var crossSum = 0
        for c in tempString {
            
            crossSum += Int(String( c) )!
            
        }
    
        sum = crossSum
        
        i += 1
    }
    
    
    return i
}

print( digitDegree(n: 91))
