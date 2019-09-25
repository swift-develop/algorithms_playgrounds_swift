//
//  main.swift
//  longestCommonPrefix
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        var commonLetters = Substring.init("")
        
        mainLoop: for i in 1..<strs[0].count {
            
            for (j,currWord) in strs.enumerated() {
                
                
                
                let currLetters = currWord.prefix( i )
                print( j, currLetters )
                if j == 0 {
                    commonLetters = currLetters
                } else if commonLetters != currLetters {
                    print("hi")
                    print( commonLetters, currLetters )
                    
                    break mainLoop
                }
                
                
                print ( commonLetters )
            }
            
        }
        
        return String( commonLetters )
    }
}


let input = ["flower","flow","flight"]

let result = Solution().longestCommonPrefix(    input )


print("-----------------------")
print( result )
