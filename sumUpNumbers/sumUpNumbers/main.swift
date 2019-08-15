//
//  main.swift
//  sumUpNumbers
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func sumUpNumbers(inputString: String) -> Int {
    
    
    let test = inputString.components(separatedBy: CharacterSet.decimalDigits.inverted ).filter { $0.count > 0 }.reduce(0) { $0 + (Int($1) ?? 0) }
    
    print( test )
    
    return inputString.components(separatedBy: CharacterSet.decimalDigits.inverted ).filter { $0.count > 0 }.reduce(0) { $0 + (Int($1) ?? 0) }
}




let inputString = "2 apples, 12 oranges"

let r = sumUpNumbers(inputString: inputString)

print( r )
