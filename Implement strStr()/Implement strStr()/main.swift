//
//  main.swift
//  Implement strStr()
//
//  Created by Tom Grant on 8/23/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count > 0 else { return 0 }
        guard haystack.count >= needle.count else { return -1 }


        if let tail = haystack.range(of: needle) {
            let test = haystack.distance(from: haystack.startIndex, to: tail.lowerBound)
        }
        
  
        return -1
    }
}



let h = "hello"

let n = "2"

let r = Solution().strStr(h, n)

print( r)
