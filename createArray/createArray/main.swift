//
//  main.swift
//  createArray
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

print("Hello, World!")




func createArray(size: Int) -> [Int] {
    return [Int](repeating: 1, count: size)
}


let size = 4


let answer = createArray(size: size)

print( answer )

