//
//  main.swift
//  isMAC48Address
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isMAC48Address(inputString: String) -> Bool {
    
//    let a = inputString.split(separator: "-")
//
//    for e in a {
//
//        guard e.count == 2,
//              let c1 = e.first,
//              let c2 = e.last,
//              c1.isHexDigit,
//              c2.isHexDigit else {
//            return false
//        }
//    }

    
    let test = inputString.startIndex..<inputString.endIndex
    let test2 = inputString.range(of: "^[a-fA-F0-9-]{17}|[a-fA-F0-9]{12}$", options: .regularExpression )
    
    print( test, test2, test == test2 )
    
    print( inputString.count )
    
    //need to tighten up my regex so i dont need to count chars
    return inputString.count == 17 && inputString.range(of: "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$", options: .regularExpression ) != nil
}



//let inputString = "a0-1B-63-84-45-E6"
//let inputString = "23-25-E4-39-40-11-"
let inputString =   "00-1B-63-84-45-E6"


let result = isMAC48Address(inputString: inputString)

print( result)
