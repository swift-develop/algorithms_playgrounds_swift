//
//  main.swift
//  metroCard
//
//  Created by Tom Grant on 8/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func metroCard(lastNumberOfDays: Int) -> [Int] {
    
//    var hash = [Int:[Int]]()
//    hash[31] = [28,30,31]
//    hash[30] = [31]
//    hash[28] = [31]
    
    return lastNumberOfDays == 31 ? [28,30,31] : [31]
}


let lastNumberOfDays = 30

print( metroCard(lastNumberOfDays: lastNumberOfDays) )

