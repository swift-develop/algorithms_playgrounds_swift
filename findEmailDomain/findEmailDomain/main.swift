//
//  main.swift
//  findEmailDomain
//
//  Created by Tom Grant on 9/26/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func findEmailDomain(address: String) -> String {
    return address.components(separatedBy: "@").last ?? "" 
}


let address = "prettyandsimple@example.com"
let result = findEmailDomain(address: address)

print( result )


