//
//  main.swift
//  isSmooth
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isSmooth(arr: [Int]) -> Bool {


    if let first = arr.first,
    let last = arr.last {

        let middle = arr.count % 2 == 0 ? Array(arr[(arr.count/2-1)...(arr.count/2)]).reduce(0) { $0 + $1 } : arr[ arr.count/2 ]
        return first == last && last == middle
    }


    return false
}


let arr = [7, 2, 2, 5, 10, 7]

let answer = isSmooth(arr: arr)

print( answer )