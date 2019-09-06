//
//  main.swift
//  yelp_practice
//
//  Created by Tom Grant on 8/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

let range1 = 10...14

let range2 = 0...12

let s = range1.clamped(to: range2)

let s1 = range2.clamped(to: range1)

let hours = s.last! - s.first!

print( s, s1, hours )
