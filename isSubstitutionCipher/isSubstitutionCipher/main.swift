//
//  main.swift
//  isSubstitutionCipher
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation



func isSubstitutionCipher(string1: String, string2: String) -> Bool {

    var cypher = [Character:Character]()

    for (c1, c2) in zip( string1, string2 ) {
        if cypher[c1] == nil  {
            if cypher.values.contains(c2) {
                return false
            }
            cypher[c1] = c2
        } else if cypher[c1] != c2 {
            return false
        }
    }

    return true
}

let string1 = "aaxxaaz"
let string2 = "aazzaay"

let result = isSubstitutionCipher(string1: string1, string2: string2)

print( result )
