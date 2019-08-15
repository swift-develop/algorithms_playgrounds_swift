//
//  main.swift
//  longestWord
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func longestWord(text: String) -> String {
    return text.components(separatedBy: CharacterSet.letters.inverted ).sorted(by: { $0.count > $1.count } ).first ?? ""
}


let s = "Ready, steady, go!"

let r = longestWord( text: s )

print( r )
