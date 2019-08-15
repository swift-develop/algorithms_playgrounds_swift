//
//  main.swift
//  isBeautifulString
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isBeautifulString(inputString: String) -> Bool {
    
    print( inputString.sorted() )
    
    let reduced = inputString.reduce(into: [Character:Int]() ) { (d, c) in
        if d[c] == nil {
            d[c] = 1
        } else {
            //really hate using the !, but perhaps there is a better way?
            d[c]! += 1
        }
    }
    
    //okay this is feeling really hacky
    let set = "abcdefghijklmnopqrstuvwxyz".prefix( reduced.count )
    
    print( set )
    print( reduced )
    
    var prevVal = Int.max
    
    
    for letter in set {
        
        if let val = reduced[ letter ], val <= prevVal {
            prevVal = val
        } else {
            return false
        }
        
    }
    
    
    
    print( reduced )
    
    return true
}

let s = "bbbaacdafe"

let r = isBeautifulString( inputString: s )

print( r )
