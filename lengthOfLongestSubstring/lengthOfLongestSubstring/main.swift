//
//  main.swift
//  lengthOfLongestSubstring
//
//  Created by Tom Grant on 8/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0}
    
        var lastChar = Character( String(s.first!) )
        var longest = 0
        var count = 0
        
        for c in s {
            if c == lastChar {
                longest = max( longest, count )
                count = 0
            }
            lastChar = c
            count += 1
        }
        
        
        
        return longest
    }
}


let r = Solution().lengthOfLongestSubstring("abcabcbb")


print( r )
