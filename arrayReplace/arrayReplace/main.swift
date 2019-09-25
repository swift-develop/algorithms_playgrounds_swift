//
//  main.swift
//  arrayReplace
//
//  Created by Tom Grant on 9/21/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    return inputArray.map {  $0 == elemToReplace ? substitutionElem : $0 }
}


let inputArray = [1, 2, 1]
let elemToReplace = 1
let substitutionElem = 3


let answer = arrayReplace(inputArray: inputArray, elemToReplace: elemToReplace, substitutionElem: substitutionElem)

print( answer )
