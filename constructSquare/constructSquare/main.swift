//
//  main.swift
//  constructSquare
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation




func constructSquare(s: String) -> Int {
    
    func getOccurances( s:String ) -> [Int] {
        let hash = s.reduce( into: [Character:Int]()) {
            $0[$1] = ( $0[$1] ?? 0 ) + 1
        }
        return hash.reduce(into: [Int]()) { $0.append( $1.value ) }
    }

    let individualOccurances = getOccurances(s:s)

    print( individualOccurances )
    print("------------------------")
    
    
    
    var root = 1
    var sqr = 1
    var lastPossibleHighest = -1
    
    while String( sqr ).count <= s.count {
        var sqr_orrurances = getOccurances(s: String( sqr ))
        
        print( sqr_orrurances )
        
        for e in individualOccurances {
            
            if let i = sqr_orrurances.firstIndex(of: e) {
                print( "e = \(e)", sqr_orrurances  )
                sqr_orrurances.remove(at: i)
            } else {
                continue
            }
            
        }

        if sqr_orrurances.isEmpty {
            lastPossibleHighest = sqr
        }
        
        
        root += 1
        sqr = root * root
    }
    
    return lastPossibleHighest
}

let s = "abcbbb"

let r = constructSquare(s: s)

print( r )

