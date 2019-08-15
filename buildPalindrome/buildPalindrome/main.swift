//
//  main.swift
//  buildPalindrome
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


func isPalindrome(_ st:String ) -> Bool {
    return st.prefix(st.count/2) == String( st.suffix(st.count/2).reversed() )
}

func buildPalindrome(st: String) -> String {
    guard isPalindrome(st) != true else { return st }
    for i in 1..<st.count {
        let c = st + String( st.prefix(i).reversed() )
        if isPalindrome( c ) { return c}
        
    }
    return st
}

let st = "abcdc"
let result = buildPalindrome(st: st)

print( result )
