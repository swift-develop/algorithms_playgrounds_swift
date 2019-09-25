//
//  main.swift
//  candles
//
//  Created by Tom Grant on 9/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func candles(candlesNumber: Int, makeNew: Int) -> Int {
    return candlesNumber + (candlesNumber-1)/(makeNew-1)
}



let candlesNumber = 1
let makeNew = 0
let result = candles(candlesNumber: candlesNumber, makeNew: makeNew)

print( result )



