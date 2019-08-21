//
//  main.swift
//  Two Sum
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let enums = nums.enumerated()
        let map = enums.reduce(into: [Int:Int] ()) { (r, arg1 ) in
            let (i, e) = arg1
            r[e] = i
        }
        
        print( map )
        
        for (i,e) in enums {
            
            let searchNum = target - e
            print( searchNum )
            if let j = map[searchNum], j != i {
                return [i,j]
            }
        }
        
        return [0,0]
    }
}


let nums =
    [3,3]
let target = 6

let result = Solution().twoSum(nums, target)


print( result )
