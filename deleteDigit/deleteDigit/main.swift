//
//  main.swift
//  deleteDigit
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func deleteDigit(n: Int) -> Int {
    
    var test = String(n).compactMap { Int(String($0)) }
    let len = test.count
    
    for i in 0..<test.count - 1 {
        
        if test[i] < test[i+1] {
            
            test.remove(at: i)
            
            break
        }
        
    }
    
    if len == test.count {
        test.removeLast()
    }
    
    return Int( test.reduce( "" ) {  $0 + String($1) } )!
}


let num = 10

let r = deleteDigit(n: num)

print( r )

