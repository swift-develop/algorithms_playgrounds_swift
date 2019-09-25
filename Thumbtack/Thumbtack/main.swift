//
//  main.swift
//  Thumbtack
//
//  Created by Tom Grant on 9/30/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation





func spellcheck( _ word:String ) -> String {
    
    for dictWord in dict {
        
        
        if dictWord.lowercased == word.lowercased {
            return dictWord
        } else {
            return word
        }
    }



let dictionarySet: Set<[String]>  = []




func makeDictionary ( _ words: [String ]) -> [String:String] {
    
    var dictionarySet = [String:String]()
    
    for word in words {
                
        dictionarySet[word.lowercased()] = word
        
    }
    
    return dictionarySet
}


    let x = "hello"
    
    x.map { (c) in
        if vowels.contains(String(c) ) {
            return "-"
        } else {
            return c
        }
}



