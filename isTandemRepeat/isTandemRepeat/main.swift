//
//  main.swift
//  isTandemRepeat
//
//  Created by Tom Grant on 9/25/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isTandemRepeat(inputString: String) -> Bool {
    
    guard inputString.count % 2 == 0 else { return false }
    let halfCount = inputString.count / 2
    
    return inputString.prefix(halfCount) == inputString.dropFirst(halfCount)
}


let inputString = "tandemtandem"
let r = isTandemRepeat(inputString: inputString)
print( r )
