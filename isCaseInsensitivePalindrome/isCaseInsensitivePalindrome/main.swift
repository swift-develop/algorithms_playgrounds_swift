//
//  main.swift
//  isCaseInsensitivePalindrome
//
//  Created by Tom Grant on 9/25/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isCaseInsensitivePalindrome(inputString: String) -> Bool {
    let inputString = inputString.lowercased()
    return inputString == String( inputString.reversed() )
}


let inputString = "AaBaa"
let result = isCaseInsensitivePalindrome(inputString: inputString)

print( result )
