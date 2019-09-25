//
//  main.swift
//  Enum
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

print("Hello, World!")


enum Barcode {
    case upc(Int,Int,Int,Int)
    case test(_ a1:Double)
    case qrCode(String)
}


var barcode = Barcode.upc(9, 9, 9, 9)

print( barcode.self )


switch barcode {
case .upc(let a, let b, let c, let d):
    print("\(a) \(b) \(c) \(d)")
case .qrCode(let code):
    print("\(code)")
case .test( let a1 ):
    print( a1 )
}


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[2]
print(mars)
