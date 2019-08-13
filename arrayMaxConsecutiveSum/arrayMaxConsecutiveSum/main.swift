//
//  main.swift
//  arrayMaxConsecutiveSum
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation
func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
    
//    var maxSum = Int.min
//    for i in 0...inputArray.count-k {
//
//        //this could be optimized so you don't have to add all three numbers each time...ie substract the first one, and add the next one
//        //and so on...
//        let temp = inputArray[i..<i+k].reduce(0) { $0 + $1 }
//        maxSum = max(temp, maxSum)
//    }
//    return maxSum
    
      var lastSum = inputArray[0..<k].reduce(0) { $0 + $1 }
      var maxSum = lastSum
      var lastHead = inputArray.first!
    
    
    for i in k..<inputArray.count {
        lastSum = lastSum - lastHead + inputArray[i]
        lastHead = inputArray[i-k+1]
        maxSum = max( maxSum, lastSum )
    }
    
      return maxSum
}

let limit = 100
var array = [Int]()

for _ in 0...limit {
    array.append( Int.random(in: 0...9 ))
}

array = [1,2,3,4,5,6,7,8,9]
let k = 2
var t1 = Date().timeIntervalSince1970
let r = arrayMaxConsecutiveSum(inputArray: array, k: k)
let t2 = Date().timeIntervalSince1970
print( t2-t1, r )
