//
//  main.swift
//  adaNumber
//
//  Created by Tom Grant on 4/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation


func adaNumber(line: String) -> Bool {

    if let n = Int(line) {
        return true
    }

    var base = 0
    var num = 0
    
    if line.contains("#") {
        base = Int(String(line.prefix { $0 != "#" }))
    }
    
    print( base )

    return true
}


let line = "123_456_789"

let r = adaNumber(line:line)

print( r )
