//
//  main.swift
//  isUnstablePair
//
//  Created by Tom Grant on 9/26/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func isUnstablePair(filename1: String, filename2: String) -> Bool {
    
    let r1 = filename1 > filename2
    let r2 = filename1.lowercased() > filename2.lowercased()
    
    let r3 = filename1 < filename2
    let r4 = filename1.lowercased() < filename2.lowercased()
    
    
    let test1 = min( filename1, filename2).lowercased()
    let test2 = min( filename1.lowercased(), filename2.lowercased() )
    
    let c1 = filename1.compare(filename2).rawValue
    
    print( c1 )
    
    print( test1, test2 )
    
    return r1 != r2 ||  r3 != r4
}

let filename1 = "D"
let filename2 = "B"

let result = isUnstablePair(filename1: filename1, filename2: filename2)



print( result )


print( min( "A", "Z" ) )
print( min( "A".lowercased(), "Z".lowercased() ) )





