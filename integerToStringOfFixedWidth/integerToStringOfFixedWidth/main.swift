//
//  main.swift
//  integerToStringOfFixedWidth
//
//  Created by Tom Grant on 4/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation

func integerToStringOfFixedWidth(number: Int, width: Int) -> String {

    let str = String(number)

    let len = str.count

    if len > width {
        return String(str.suffix(width))
    }

    return String.init(repeating: "0", count: width - len )
}




let number = 1234
let width = 2

let r = integerToStringOfFixedWidth(number: number, width: width)




print( r )
