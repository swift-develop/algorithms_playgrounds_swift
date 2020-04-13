//
//  main.swift
//  code_singal_practice_1
//
//  Created by Tom Grant on 4/12/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation


func meanGroups(a: [[Int]]) -> [[Int]] {

    var dictonary = [Float:[Int]]()
    
    for (i,e) in a.enumerated() {
        let reduce = Float( e.reduce(0) { $0 + $1} ) / Float(e.count)
        if dictonary[reduce] == nil {
            dictonary[reduce] = [i]
        } else {
            dictonary[reduce]?.append(i)
        }
    }
    return Array(dictonary.values).sorted { $0[0] < $1[0] }
}

let a =
[[-2,4,7,-6,2,-5,3],
[-1,0,0,0],
[2,2,-6,17,9,-22,30,-16,0,-1,-11,6,0,-4],
[3,3,-8,-2,3]]

let r = meanGroups(a: a)

print( r )
