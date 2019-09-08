//
//  main.swift
//  additionWithoutCarrying
//
//  Created by Tom Grant on 9/8/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

//func additionWithoutCarrying(param1: Int, param2: Int) -> Int {
//    var digits = 1
//    var result = 0
//    var param1 = param1, param2 = param2
//    var d1 = 0
//    var d2 = 0
//
//    while param1 > 0 || param2 > 0 {
//        (param1, d1) = param1.quotientAndRemainder(dividingBy: 10)
//        (param2, d2) = param2.quotientAndRemainder(dividingBy: 10)
//        let d3 = (d1 + d2) % 10
//        result += d3 * digits
//        digits *= 10
//    }
//
//
//    return result
//}


func additionWithoutCarrying(param1: Int, param2: Int) -> Int {
    guard param1 > 0 || param2 > 0 else { return 0 }
    
    let (q1, r1) = param1.quotientAndRemainder(dividingBy: 10),
        (q2, r2) = param2.quotientAndRemainder(dividingBy: 10)
    
    return (r1+r2)%10 + (additionWithoutCarrying(param1: q1, param2: q2) * 10 )
}


let param1 = 456
let param2 = 1734


let r = additionWithoutCarrying(param1: param1, param2: param2)

print( r )



