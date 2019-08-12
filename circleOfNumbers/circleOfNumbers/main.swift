//
//  main.swift
//  circleOfNumbers
//
//  Created by Tom Grant on 8/11/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//
func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    return ( n/2 + firstNumber ) % n
}


let r = circleOfNumbers(n: 10, firstNumber: 2)

print( r )

