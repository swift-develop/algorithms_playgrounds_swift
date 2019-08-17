//
//  main.swift
//  containsCloseNums
//
//  Created by Tom Grant on 8/16/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func containsCloseNums(nums: [Int], k: Int) -> Bool {
    
    var d = nums.enumerated().reduce(into: [Int:[Int]]()) {
        $0[$1.1] = $0[$1.1] == nil ? [$1.0] : $0[$1.1]! + [$1.0]
    }
        
    .filter { $1.count > 1 }
    
    print( d )
    
    for (key,v) in d {
        for i in 0..<v.count {
            for j in i+1..<v.count {
                print( i, j)
                if abs(v[i] - v[j]) <= k { return true }
            }
        }

    }
    return false
}

let nums =  [99, 99]
let k = 2

let r = containsCloseNums(nums: nums, k: 3)

print( r )
