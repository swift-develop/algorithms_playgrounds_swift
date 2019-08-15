//
//  main.swift
//  lineEncoding
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation
func lineEncoding(s: String) -> String {
    
    
    
    var newString = ""
    var count = 0
    var lastChar:Character = s.first!
    
    for c in s + "!" {
        
        if c != lastChar  {
            //then we gota encode
            
            if count > 1 {
                newString += String( count )
            }
            
            newString += String( lastChar )
            count = 0
            
        }
        
        lastChar = c
        count += 1
    }
    
    return newString
}

let s = "aabbbcc"

let r = lineEncoding(s: s)
print( r )
