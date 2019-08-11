//
//  main.swift
//  alphabeticShift
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func alphabeticShift(inputString: String) -> String {
    
    var newString = ""
    
    for c in inputString.utf8 {
        
        print( c )
    }
    
    let r = inputString.utf8.compactMap { String(UnicodeScalar( $0 >= 122 ? 122 - 25 : $0 + 1 )) }.joined()
    
    print( r )
    
    return newString
}


let r = alphabeticShift(inputString: "zzzz")

print( r )
