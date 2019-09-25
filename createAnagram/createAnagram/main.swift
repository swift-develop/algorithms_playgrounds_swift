//
//  main.swift
//  createAnagram
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func createAnagram(s: String, t: String) -> Int {

    var hash = [Character:Int]()
    hash = s.reduce(into: hash ) {  $0[$1] = ($0[$1] ?? 0 ) + 1}
    hash = t.reduce(into: hash ) {  $0[$1] = ($0[$1] ?? 0 ) - 1}
    
    let swaps = hash.reduce(0) { $0 + abs( $1.value ) } / 2
    
    return swaps
}


let s = "AABAA"
let t = "BBAAA"

let r = createAnagram(s: s, t: t)

print( r )
