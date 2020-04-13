//
//  main.swift
//  electionsWinners
//
//  Created by Tom Grant on 4/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import Foundation

func electionsWinners(votes: [Int], k: Int) -> Int {

    let max = votes.max()!

    guard k > 0 || votes.firstIndex(of: max) == votes.lastIndex(of: max) else {
        return 0
    }

    let candidates = votes.filter { $0 + k > max || $0 == max }

    return candidates.count
}


let votes = [5, 1, 3, 4, 1]

let k = 0

let r = electionsWinners(votes: votes, k: k)

print( r )



