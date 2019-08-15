//
//  main.swift
//  isDigit
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isDigit(symbol: Character) -> Bool {
    
    //return Int( String( symbol )  ) == nil ? false : true
    
    return symbol.isNumber
}

print( isDigit(symbol: "0"))
