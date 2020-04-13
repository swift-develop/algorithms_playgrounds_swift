//
//  main.swift
//  timedReading
//
//  Created by Tom Grant on 4/12/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation


func timedReading(maxLength: Int, text: String) -> Int {
    
    return text.split{ !$0.isLetter }.filter { $0.count <= maxLength }.count
    
}





let maxLength = 4
let text = "The Fox asked the stork, 'How is the soup?'"


let r = timedReading(maxLength: maxLength, text: text)

print( r )


