//
//  main.swift
//  stringsConstruction
//
//  Created by Tom Grant on 9/27/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func stringsConstruction(a: String, b: String) -> Int {

    //sometimes I even hate me. Just because you can do this, doesn't mean you should. Hard to read. 
    let availableLetters = b.reduce(into: [Character:Int]() ) { (r, c) in r.merge( [c:1] ) { $0 + $1 } }
    return a.reduce(into: [Character:Int]() ) { (r, c) in r.merge( [c:1] ) { ($0 + $1) } }.reduce( Int.max ) { min($0, ( availableLetters[$1.key] ?? 0 ) / $1.value )}
}

let a = "abc"
let b = "abccba"

let r = stringsConstruction(a: a, b: b)

print( r )
