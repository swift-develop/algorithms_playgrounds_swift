//
//  main.swift
//  digitsProduct
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func digitsProduct(product: Int) -> Int {
    
    guard product != 0 else { return 10 }
    guard product != 1 else { return 1 }
    
    var b = product
    var a = [String]()
    
    var loopBreak = 0
    
    let r = (2...9).reversed()
    while b > 2, loopBreak < 5 {
        for i in r {
            if b  % i == 0 {
                b /= i
                a.append( String(i) )
                if b == 1 {
                    a = a.sorted()
                    return Int( a.joined() ) ?? -1
                } else if b < 10 {
                    a.append( String(b) )
                    a = a.sorted()
                    return Int(a.joined()) ?? -1
                } else {
                    break
                }
            }
        }
        if a.isEmpty { return -1}
        loopBreak += 1
    }
    
    
    return -1
}

let product = 0

let r = digitsProduct(product: product )
print( r )
