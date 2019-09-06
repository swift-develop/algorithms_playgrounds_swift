//
//  main.swift
//  Defanging an IP Address
//
//  Created by Tom Grant on 8/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func defangIPaddr(_ address: String) -> String {
    return address.reduce(into: "" ) { $0 +=  $1 != "." ? String($1) : "[.]" }
}

let r = defangIPaddr("1.1.1.1")

print( r )
