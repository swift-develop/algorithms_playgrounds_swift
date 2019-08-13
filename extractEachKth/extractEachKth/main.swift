//
//  main.swift
//  extractEachKth
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

//func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
//    //having to copy the array maybe not so good?
//    var a = inputArray
//    a.remove(at: k)
//    return a
//}

//func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
//    let test = inputArray[0..<k-1]
//    let test2 = inputArray[k+1..<inputArray.count]
//    let result = Array( inputArray[0..<k-1] + inputArray[k+1..<inputArray.count])
//    print( test, test2 )
//    return Array( inputArray[0..<k-1] + inputArray[k..<inputArray.count])
//}

class Solution {
func extractEachKth(inputArray: [Int], k: Int) -> [Int] {

    var p = 0
    var a = [Int]()
    
    while p < inputArray.count {
        let end = min( p+k-1, inputArray.count)
        let head = inputArray[p..<end]
        
        a += head
        p += k
    }

    
    return a
}


func extractEachKth_fast(inputArray: [Int], k: Int) -> [Int] {
    return inputArray.enumerated().filter { offset, _ in (offset + 1) % k != 0 }.map { _, value in value }
}


}
let a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


let result = Solution().extractEachKth_fast(inputArray: a, k: 3)

print( a )
print( result )
