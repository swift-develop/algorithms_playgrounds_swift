//
//  main.swift
//  electionsWinners
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation



func electionsWinners(votes: [Int], k: Int) -> Int {
    
    guard votes.count > 0 else { return 0 }
    
    let sort = votes.sorted()
    let last = sort.last ?? 0

    
//    if let secondLast =

    print( last )
    
    var c = 0
    
    for e in sort {
        
        print( e, k, e + k )
        
        if e + k > last {
            c += 1
        }
        
    }
    
    if c == 0, last != sort[sort.count - 2] {
        return 1 
    }
    
    
    return c
}



let votes = [5, 1, 3, 4, 1]
let k = 0

let result = electionsWinners(votes: votes, k: k)

print( result )
