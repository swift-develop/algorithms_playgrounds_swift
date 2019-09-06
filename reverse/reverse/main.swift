//
//  main.swift
//  reverse
//
//  Created by Tom Grant on 8/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var rev = 0, x = x, pop = 0
        while x != 0 {
            (x, pop) = x.quotientAndRemainder(dividingBy: 10)
            rev = rev * 10 + pop
        }
        
        return rev <= Int32.max && rev >= Int32.min ? rev : 0
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        var rev = 0, y = x, pop = 0
        while y != 0 {
            (y, pop) = y.quotientAndRemainder(dividingBy: 10)
            rev = rev * 10 + pop
        }
        
        return rev == x
    }
}


print( Solution().reverse(123) )

print( Solution().isPalindrome(12321) )
