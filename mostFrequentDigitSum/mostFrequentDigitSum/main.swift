//
//  main.swift
//  mostFrequentDigitSum
//
//  Created by Tom Grant on 10/1/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func mostFrequentDigitSum(n: Int) -> Int {

//    var n = n
//    var frequencyHash = [Int:Int]()
//
//    while n > 0 {
//        let sumOfDigits = Array(String(n)).map { Int(String($0)) ?? 0 }.reduce(0) { $0 + $1 }
//        frequencyHash[ sumOfDigits, default: 0] += 1
//        n -= sumOfDigits
//    }
//
//    guard let highestOccuringKey = frequencyHash.max(by:{ $0.value == $1.value ? $0.key < $1.key : $0.value < $1.value })?.key else {
//        return 0
//    }
//
//    return highestOccuringKey
    
    
     return n >= 999 ? 18 : n >= 9 ? 9 : n
}


let n = 17

let r = mostFrequentDigitSum(n: n)
print( r )

var resultSet = Set<Int>()

for i in 0...10000 {
    resultSet.insert( mostFrequentDigitSum(n: i ) )
}

print( resultSet )
