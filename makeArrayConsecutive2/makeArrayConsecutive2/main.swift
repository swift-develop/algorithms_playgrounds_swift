//
//  main.swift
//  makeArrayConsecutive2
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func makeArrayConsecutive2(statues: [Int]) -> Int {

    
//    if let max = statues.max(), let min = statues.min() {
//        let length = max - min
//        return length - statues.count + 1
//    }
    

    
    return (statues.max()! - statues.min()!) - statues.count + 1
}


let statues = [6, 2, 3, 8]
let result = makeArrayConsecutive2(statues: statues)

print( result )
