//
//  main.swift
//  findContiguousHistory
//
//  Created by Tom Grant on 4/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation


func findContiguousHistory(u1:[String], u2:[String]) -> [String] {
    var longestString = [String]()
    var longest = [String]()
    
    var p1 = 0
    var p2 = 0
    
    while p1 < u1.count {
        let word1 = u1[p1]
        let word2 = u2[p2]
        
        if word1 == word2 {
            longest.append( word1 )
            p1 += 1
            p2 = p2 < u2.count - 1 ? p2 + 1 : 0
        } else if p2 < u2.count - 1 {
            if longest.count > longestString.count {
                longestString = longest
                longest = []
            }
            p2 += 1
        } else {
            p1 += 1
            p2 = 0
        }
    }
    
    return longestString
}

var user0 = ["/start", "/pink", "/register", "/orange", "/red", "a"];
var user1 = ["/start", "/green", "/blue", "/pink", "/register", "/orange", "/one/two"];

 var user2 = ["a", "/one", "/two"];
 var user3 = ["/pink", "/orange", "/yellow", "/plum", "/blue", "/tan", "/red", "/amber", "/HotRodPink", "/CornflowerBlue", "/LightGoldenRodYellow", "/BritishRacingGreen"];
 var user4 = ["/pink", "/orange", "/amber", "/BritishRacingGreen", "/plum", "/blue", "/tan", "/red", "/lavender", "/HotRodPink", "/CornflowerBlue", "/LightGoldenRodYellow"];
 var user5 = ["a"];



let r = findContiguousHistory(u1: user3, u2: user4)

print( r )


