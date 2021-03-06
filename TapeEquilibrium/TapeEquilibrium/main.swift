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
    
        var head = A.first!
        var tail = A.dropFirst().reduce(0) { $0 + $1 }
        var min = abs( head - tail )
    
        for i in 1..<A.count-1 {
            
            let val = A[i]
            head += val
            tail -= val
            let sum = abs( head - tail )
            
            if sum < min { min = sum }
        }
    
    
        return min
}
    



var A : [Int] = [3,1,2,4,3]

let r = solution(&A)

print( "result", r )


