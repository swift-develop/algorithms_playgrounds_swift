//
//  main.swift
//  htmlEndTagByStartTag
//
//  Created by Tom Grant on 9/26/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func htmlEndTagByStartTag(startTag: String) -> String {
    
    var tagName = ""
    
    if let tagNameEnd = startTag.dropFirst().firstIndex(of: " ") {
        tagName = String( startTag.dropFirst()[startTag.dropFirst().startIndex..<tagNameEnd] )
    } else {
        tagName = String(startTag.dropFirst().dropLast())
    }
    
    return "</\(tagName)>"
}

let startTag = "<button type='button' disabled>"
let result = htmlEndTagByStartTag(startTag: startTag )


print( result )
