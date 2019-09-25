//
//  main.swift
//  firstReverseTry
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func firstReverseTry(arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    var arr = arr
    arr.swapAt(0, arr.count - 1)
    return arr
}

let arr = [1, 2, 3, 4, 5]
let answer = firstReverseTry(arr: arr)

print( answer )
