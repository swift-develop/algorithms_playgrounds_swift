//
//  main.swift
//  findEmailDomain
//
//  Created by Tom Grant on 8/13/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

//let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)

func findEmailDomain(address: String) -> String {
    
    guard let at = address.lastIndex(of: "@") else { return "FUCK" }
    return String( address.suffix(from: address.index(after: at ) ) )
}

let email = "actionscript@mac.com"

let result = findEmailDomain(address: email )

print( result )


