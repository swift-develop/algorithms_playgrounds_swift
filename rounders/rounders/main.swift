//
//  main.swift
//  rounders
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func rounders(n: Int) -> Int {
    
    guard n >= 1 else { return n }
    
    let length = Double( Int( log10(Double(n) ) ) )
    
    let tens = Double( Int(pow( 10.0, length ) ) )
    
    let decimal = Int( round( Double(n) / tens ) * tens )
    
    return decimal
}


let n = 15

let result = rounders(n:n)

print( result )
