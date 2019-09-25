//
//  main.swift
//  weakNumbers
//
//  Created by Tom Grant on 9/23/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func weakNumbers(n: Int) -> [Int] {


    var divisors = [Int]()
    var weakness = [Int]()
    
    for i in 1...n {
        
        let devisors = findDevisorsCount(n:i)
        divisors.append( devisors )
        
        let numWithGreaterWeakness = divisors.reduce(0) { (r, e)  in
            e > devisors ? r + 1 : r
        }
        
        weakness.append(numWithGreaterWeakness)
    }
    
    let weakest = weakness.max() ?? 0
    let result = weakness.filter { $0 == ( weakness.max() ?? 0 ) }
    
    return [weakest, result.count]
}

func findDevisorsCount(n: Int) -> Int {
    var count = 0
    for i in 1...n {
        count += n % i == 0 ? 1 : 0
    }
    
    return count
}


let n = 500
let r = weakNumbers(n: n)

print( r )
