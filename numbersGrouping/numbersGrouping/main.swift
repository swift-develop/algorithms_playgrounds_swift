//
//  main.swift
//  numbersGrouping
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

print("Hello, World!")

func numbersGrouping(a: [Int]) -> Int {
    //screw you python folks
    return a.count + a.reduce(into: Set<String>() ) { $0.insert( ($1 - 1) / Int(pow(10.0,4.0)) ) }.count
}

let a = [10000, 1]
let r = numbersGrouping(a: a)

print( r )
