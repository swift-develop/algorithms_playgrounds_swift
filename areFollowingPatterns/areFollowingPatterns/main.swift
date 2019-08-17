//
//  main.swift
//  areFollowingPatterns
//
//  Created by Tom Grant on 8/16/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func areFollowingPatterns(strings: [String], patterns: [String]) -> Bool {
    var d = [String:String]()
    for (key, value) in zip(strings, patterns) {
        if d[key] == nil && d.values.contains(value) == false {
            d[key] = value }
        else if d[key] != value {
            return false
        }
    }
    return true
}


let s = ["cat",
         "dog",
         "dog"]

let p = ["a",
         "b",
         "b"]


let r = areFollowingPatterns(strings: s, patterns: p)



print( r )
