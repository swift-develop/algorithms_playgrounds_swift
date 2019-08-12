//
//  main.swift
//  depositProfit
//
//  Created by Tom Grant on 8/11/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation
class Solution {
    func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
        
        let r =  Double(rate) / 100 + 1
        var sum = Double( deposit )
        let limit = Double( threshold )
        var i = 0
        
        //print( sum, r, limit )
        while sum < limit {
            sum = sum * r
            i += 1
        }
        return i
    }
    
    func depositProfit_log(deposit: Int, rate: Int, threshold: Int) -> Int {
        //return math.ceil(math.log(threshold/deposit, 1+rate/100))
        return Int( ceil( log(Double(threshold)/Double(deposit)) / log(Double(rate) / 100 + 1) ) )
    }
    
}

Solution().depositProfit_log(deposit: 100, rate: 20, threshold: 170)
