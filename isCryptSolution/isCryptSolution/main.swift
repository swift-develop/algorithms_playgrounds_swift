//
//  main.swift
//  isCryptSolution
//
//  Created by Tom Grant on 8/15/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isCryptSolution(crypt: [String], solution: [[Character]]) -> Bool {
    var r = [Int]()
    let hash = solution.reduce(into: [Character:Character]() ) { return $0[ $1[0] as Character ] = $1[1] }

    
    for w in crypt {
        let s = String( w.map { hash[$0] ?? "0" } )
        if w.count < 2 { r.append( Int(s) ?? -1)}
        else if s.first == "0" { return false }
        else { r.append( Int(s) ?? -2 )}
    }
    
    print( r )
    
    return r[0] + r[1] == r[2]
}


let crypt = ["A",
             "A",
             "A"]

let solution: [[Character]]  = [["A","0"]]


let r = isCryptSolution( crypt: crypt, solution: solution )


print( r )
