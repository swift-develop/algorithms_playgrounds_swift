//
//  main.swift
//  messageFromBinaryCode
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func messageFromBinaryCode(code: String) -> String {
    
    guard code.count % 8 == 0 else { return ""}
    let byte = 8
    var out = ""
    
    for i in stride(from: 0, to: code.count, by: byte) {
        let head = code.index(code.startIndex, offsetBy: i)
        let tail = code.index(head, offsetBy: 8)
        let binaryString = code[head..<tail]
        
        let num = Int.init(binaryString, radix: 2) ?? 0

        let c = String.init(Unicode.Scalar.init(num)!)
        
        out += c
    }
    
    return out
}

let s = "010010000110010101101100011011000110111100100001"

let r = messageFromBinaryCode(code: s)

print( r )
