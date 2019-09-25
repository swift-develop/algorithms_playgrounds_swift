//
//  main.swift
//  removeArrayPart
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

let inputArray = [2, 3, 2, 3, 4, 5]
let l = 2
let r = 4

func removeArrayPart(inputArray: [Int], l: Int, r: Int) -> [Int] {
    var inputArray = inputArray
    inputArray[l...r] = []
    return inputArray
}

let result = removeArrayPart(inputArray: inputArray, l: l, r: r)

print( result )