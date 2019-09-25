//
//  main.swift
//  isSumOfConsecutive2
//
//  Created by Tom Grant on 9/22/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isSumOfConsecutive2(n: Int) -> Int {

    let begingingOfSum = 1
    guard n > begingingOfSum else { return 0 }
    
    var start = begingingOfSum
    var sumIncriment = start
    var sum = [start]
    var reset = false
    
    var sumCount = 0
    
    
    
    repeat {
        sumIncriment += 1
        sum.append(sumIncriment)
        
        let testSum = sum.reduce(0) {$0 + $1}
        if testSum == n {
            sumCount += 1
            reset = true
        } else if sum.count == 2 && testSum >= n {
            //there can be no greater sum
            break
        } else if testSum >= n {
            reset = true
        }
        if reset {
            reset = false
            start += 1
            sumIncriment = start
            sum = [start]
        }
        
    } while start < n
    
    
    return sumCount
}

let n = 15
let r = isSumOfConsecutive2(n: n)

print( r )
