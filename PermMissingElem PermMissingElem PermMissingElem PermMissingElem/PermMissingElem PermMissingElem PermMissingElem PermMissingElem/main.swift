//
//  main.swift
//  PermMissingElem PermMissingElem PermMissingElem PermMissingElem
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

//public func solution(_ A : inout [Int]) -> Int {
//
//    guard A.count > 0 else { return 1 }
//
//
//    let A = A.sorted()
//
//    guard A.first == 1 else { return 1 }
//
//    for i in 1..<A.count {
//
//        if A[i-1] + 1 != A[i] {
//
//            return A[i-1] + 1
//
//        }
//    }
//
//    return A.last! + 1
//}

public func solution(_ A : inout [Int]) -> Int {
    
    guard A.count > 0 else { return 0 }
    
//    let sum1 = A.reduce(0) { $0 + $1 }
//    let sum2 = (1...A.count+1).reduce(0) { $0 + $1 }

    
    return (1...A.count+1).reduce(0) { $0 + $1 } - A.reduce(0) { $0 + $1 }
}

var s : [Int] = [1]

let r = solution(&s)

print( r )
