//
//  main.swift
//  arrayReplace
//
//  Created by Tom Grant on 8/10/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

class Solution {
    
    
    func variableName_regex(name: String) -> Bool {
    
        if let test = name.range(of: #"\D\w*"#, options: .regularExpression), name[test].count == name.count {

            
//
////          print( type(of: name ))
//
////          let result = name[test]
//
//            print( result )
//
//            print( result.count == name.count  )
//
//            print( type(of: test ))
//
//            if result.count == name.count { return true }
            return true
        }
        
        
        
        
        return false
    }
    
 
}

print( Solution().variableName(name:"_Aas_23") )



func variableName(name: String) -> Bool {
    
    if let test = name.range(of: #"\D\w*"#, options: .regularExpression), name[test].count == name.count {
        
        
        //
        ////          print( type(of: name ))
        //
        ////          let result = name[test]
        //
        //            print( result )
        //
        //            print( result.count == name.count  )
        //
        //            print( type(of: test ))
        //
        //            if result.count == name.count { return true }
        return true
    }
    
    
    
    
    return false
}
