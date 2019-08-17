//
//  main.swift
//  possibleSums
//
//  Created by Tom Grant on 8/16/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

//func possibleSums(coins: [Int], quantity: [Int]) -> Int {
//    //fucking hell this was hard
//    var coinArray = [Int]()
//    for (c,q) in zip( coins, quantity ) { coinArray.append(contentsOf: [Int](repeating: c, count: q)) }
//
//    var toSort: Set<[Int]> = []
//    var sums: Set<Int> = []
//
//    toSort.insert( coinArray )
//
//    var i = 0
//
//    while toSort.count > 0 {
//        //remove one
//        i += 1
//
//        let r = toSort.removeFirst()
//        sums.insert( r.reduce(0) { $0 + $1 } )
//        for i in 0..<r.count {
//            //force copy
//            var temp = r
//            temp.remove(at: i)
//
//            if temp.count == 0 { break }
//            toSort.insert(temp)
//        }
//    }
//    return sums.count
//}

func possibleSums(coins: [Int], quantity: [Int]) -> Int {
    var sums = Set([0])

    for i in 0..<coins.count {
        
        print("sums", sums )
        for s in sums {
            var c = s + coins[i]
            for _ in 0..<quantity[i] {
                
                print( "coin ", coins[i],"+",s,"=",c)
                
                if  sums.contains(c) { print("duplicate") }
                sums.insert( c )
                c+=coins[i]
            }

        }
    }
    return sums.count - 1
}


let c = [25, 50]
let q = [4, 2]


print("Coin values", c)
print("Coin quanty", q)
print("-----------------")
print()

let r = possibleSums(coins: c, quantity: q)


print("Possible sums ",  r  )
