//
//  main.swift
//  stringsRearrangement
//
//  Created by Tom Grant on 8/12/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation



func generate(n: Int, a: [String] ) -> [[String]]{
    
    var c : [Int] = []
    var a = a
    
    var result = [[String]]()
    
    for _ in 0..<n {
        c.append(0)
    }
    
    result.append(a)
    
    var i = 0
    while i < n {
        if c[i] < i {
            //try using multipe
            if i % 2 == 0  {
                a.swapAt(0, i)
            } else {
                a.swapAt(c[i], i)
            }
            result.append(a)
            c[i] += 1
            i = 0
        } else {
            c[i] = 0
            i += 1
        }
    }
    return result
}

func oneOrLessCharDiff( _ a:String, _ b:String) -> Bool {
    
    let c = zip(a,b)
    
    var matchCount = 0
    for i in c {
        if i.0 != i.1 {
            matchCount += 1
            if ( matchCount > 1) {
                
                return false
                
            }
        }
    }
    
    return matchCount == 1 ? true : false
}

func stringsRearrangement(inputArray: [String]) -> Bool {

    let collection = generate(n: inputArray.count, a: inputArray)
    

    for row in collection {
        
        var closeEnough = true
        
        for j in 0..<row.count-1 {
            let a = row[j]
            let b = row[j+1]
            if oneOrLessCharDiff(a,b) == false {
                closeEnough = false
                break
            }
        }
        
        if closeEnough { return true }
        
    }
    
    return false
}

var i = ["aba",
         "bbb",
         "bab"]

i = ["ab", "bb", "aa"]

//let a = "aba"
//let b = "bbb"
//
//
//print( oneOrLessCharDiff(a, b) )

let r = stringsRearrangement(inputArray: i)
print( "result", r )






