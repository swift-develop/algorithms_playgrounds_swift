//
//  main.swift
//  newRoadSystem
//
//  Created by Tom Grant on 8/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

struct City {
    var name = 0
    var outBound = [Int]()
    var inbound = [Int]()
}

func newRoadSystem(roadRegister: [[Bool]]) -> Bool {

    
    var cities = [City].init(repeating: City(), count: roadRegister.count)
    
    for (i,row) in roadRegister.enumerated() {
        for (j,road) in row.enumerated() {
            if road {
                cities[i].outBound.append(j)
                cities[j].inbound.append(i)
            }
        }
    }
    
    for i in 0..<roadRegister.count {
        if cities[i].inbound.count != cities[i].outBound.count {
            return false
        }
    }
    return true
}

let roads = [[false,true,false,false],
 [false,false,true,false],
 [true,false,false,true],
 [false,false,true,false]
]





let result = newRoadSystem(roadRegister: roads )

print( result )
