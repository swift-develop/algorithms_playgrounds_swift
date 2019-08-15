//
//  main.swift
//  fileNaming
//
//  Created by Tom Grant on 8/14/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func fileNaming(names: [String]) -> [String] {
    var s = [String:Int]()
    var a = names
    for (i,e) in a.enumerated() {
        if s[e] == nil {
            s[e] = 0
        } else {
            var fileName = ""
            repeat {
                s[e]! += 1
                fileName = e + "(\(s[e]!))"
            } while s[fileName] != nil
            a[i] = fileName
            s[fileName] = 0
        }
    }
    return a
}

let names = [
"a(1)",
"a(6)",
"a",
"a",
"a",
"a",
"a",
"a",
"a",
"a",
"a",
"a"]
let r = fileNaming( names: names )

print( r )
