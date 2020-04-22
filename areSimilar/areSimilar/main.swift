//
//  main.swift
//  areSimilar
//
//  Created by Tom Grant on 4/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation

func areSimilar(a: [Int], b: [Int]) -> Bool {

    let z = zip(a,b).filter { $0 != $1 }
    
    print( z )
    
    if z.count <= 2, z[0].0 == z[1].1, z[0].1 == z[1].0 {
        return true
    }
    
    return false
}


let a = [1, 1, 4]
let b = [1, 2, 3]


let r = areSimilar(a: a, b: b)

print( r )
