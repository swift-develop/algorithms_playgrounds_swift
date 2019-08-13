//
//  main.swift
//  growingPlant
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func growingPlant(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
    
//    var height = 0
//    var days = 0
//
//    while height < desiredHeight {
//        days += 1
//        height += upSpeed
//        print( height, days)
//        if ( height >= desiredHeight ) {
//            return days
//        }
//
//        height -= downSpeed
//    }
//    //something bad happened
//    return 0
    
//    return upSpeed > desiredHeight ? 1 : Math.ceil((desiredHeight - upSpeed) / (upSpeed - downSpeed)) + 1;
    return upSpeed > desiredHeight ? 1 : Int(ceil( Double(desiredHeight - upSpeed) / Double(upSpeed - downSpeed) ) ) + 1
}


let upSpeed = 100
let downSpeed = 10
let desiredHeight = 910


let result = growingPlant(upSpeed: upSpeed, downSpeed: downSpeed, desiredHeight: desiredHeight)

print( result )
