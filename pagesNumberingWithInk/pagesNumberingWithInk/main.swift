//
//  main.swift
//  pagesNumberingWithInk
//
//  Created by Tom Grant on 9/22/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func pagesNumberingWithInk(current: Int, numberOfDigits: Int) -> Int {
    
    let digits = String(current + 1).count
    if digits <= numberOfDigits {
        return pagesNumberingWithInk(current: current + 1, numberOfDigits: numberOfDigits - digits )
    } else {
        return current - 1
    }
}


let current = 21
let numberOfDigits = 5
let r = pagesNumberingWithInk(current: current, numberOfDigits: numberOfDigits)
print( r )
