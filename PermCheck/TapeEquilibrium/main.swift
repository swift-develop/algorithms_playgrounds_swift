//
//  main.swift
//  TapeEquilibrium
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


// brute force
//public func solution(_ A : inout [Int]) -> Int {
//
//    var min = Int.max
//
//    for i in 0..<A.count-1 {
//
//        let head = A[0...i].reduce(0) { $0 + $1 }
//        let tail = A[i+1..<A.count].reduce(0) { $0 + $1 }
//        let sum = abs( head - tail )
//
//        if sum < min { min = sum }
//    }
//
//
//    return min
//
//}
public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count <= 100000 else { return 0 }
    
    var e = 1
    for a in A.sorted() {
        if a != e { return 0}
        e += 1
    }
    return 1
}
    



var A : [Int] = [1]

let r = solution(&A)

print( "result", r )


