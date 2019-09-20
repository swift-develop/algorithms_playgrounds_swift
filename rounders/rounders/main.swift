//
//  main.swift
//  rounders
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func rounders(n: Int) -> Int {
    var n = n
    var digits = 10
    
    repeat {
       
        //remove and round
        var (q,r) = n.quotientAndRemainder(dividingBy: digits)
        
        if  r*10 / digits * 10  >= 5  {
            q += 1
        }
        
        n = q * digits
        
        print( n, q, r, digits )
        
        digits *= 10
        
    } while digits < n
    
    
    return n
}


let n = 15

let result = rounders(n:n)

print( result )
