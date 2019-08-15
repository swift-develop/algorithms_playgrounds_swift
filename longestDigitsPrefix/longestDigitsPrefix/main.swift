//
//  main.swift
//  longestDigitsPrefix
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func longestDigitsPrefix(inputString: String) -> String {
    
    
    var digitLength = 0
    for c in inputString {
//        if c.isNumber {
        if Int( String( c ) ) != nil {
            digitLength += 1
        } else {
            break
        }
    }
    
    return String( inputString.prefix( digitLength ) )
}

let string = "123aa1"

let result = longestDigitsPrefix(inputString: string)

print( result )

//let x = inputString.components(separatedBy: CharacterSet.decimalDigits.inverted).first ?? ""

let x = string.components(separatedBy:  CharacterSet.decimalDigits.inverted )

print( x, type(of: x) )

//print( CharacterSet.decimalDigits.inverted )


