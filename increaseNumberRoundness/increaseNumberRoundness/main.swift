//
//  main.swift
//  increaseNumberRoundness
//
//  Created by Tom Grant on 9/19/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


func increaseNumberRoundness(n: Int) -> Bool {
    return String(n).range(of: "0[1-9]", options: .regularExpression ) != nil
}

let n = 1022220
let r = increaseNumberRoundness(n:n)

print( r )

