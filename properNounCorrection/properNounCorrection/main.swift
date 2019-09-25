//
//  main.swift
//  properNounCorrection
//
//  Created by Tom Grant on 9/25/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func properNounCorrection(noun: String) -> String {
    return noun.lowercased().capitalized
}


let noun = "pARiS"

let r = properNounCorrection(noun: noun )

print( r )
