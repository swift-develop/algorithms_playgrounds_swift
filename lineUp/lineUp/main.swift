//
//  main.swift
//  lineUp
//
//  Created by Tom Grant on 9/7/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func lineUp(commands: String) -> Int {

    return commands.reduce(0) { (r, c) in c == "L" || c == "R" ? r + 1 : r % 2 == 0 ? r + 2 : r + 0 } / 2
}

let commands = "AALAAALARAR"


let r = lineUp(commands: commands)

print( r )
