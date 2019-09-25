//
//  main.swift
//  replaceMiddle
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func replaceMiddle(arr: [Int]) -> [Int] {
    
    var arr = arr
    
    if arr.count % 2 == 0 {
        let middle = (arr.count/2-1)...(arr.count/2)
        print("hi")
//        arr.replaceSubrange(middle, with: [arr[arr.count/2-1] + arr[arr.count/2]])
        arr[middle] = [arr[arr.count/2-1] + arr[arr.count/2]]
    } 
    
    
    return arr
}


let arr = [7, 2, 2, 5, 10, 7]

let result = replaceMiddle(arr: arr)

print( result )
