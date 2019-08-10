//
//  main.swift
//  CyclicRotation CyclicRotation
//
//  Created by Tom Grant on 8/9/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {

    //let len = A.count < K ? A.count % K : A.count
    guard A.count > 0 else { return A }
    
    let len = A.count
    
    var clicks = K
    
    if clicks > len {
//        print("yep")
        clicks = clicks % len
    }
    
    
    
//    print( A )
//    print( len, clicks )
    
    //A.count != K is a full rotation, so is zero
    guard K > 0, len > 1, len != K, len != 0 else {
        return A
    }
    
    //print("shifted that shit")
    let newArray = Array(A[len-clicks..<len] + A[0..<len-clicks])

    return newArray
    
}

var s : [Int] = []

var k = Int.random(in: 0...9 )

k = 6

let r = solution( &s, k)

print( r )
