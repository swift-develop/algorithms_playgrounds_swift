//
//  main.swift
//  reachNextLevel
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func reachNextLevel(experience: Int, threshold: Int, reward: Int) -> Bool {
    
    
    return experience + reward >= threshold
}


let e = 10, t = 15, r = 5

let result = reachNextLevel(experience: e, threshold: t, reward: r)

print( result )
