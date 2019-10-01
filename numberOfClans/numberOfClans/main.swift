//
//  main.swift
//  numberOfClans
//
//  Created by Tom Grant on 10/1/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation

func numberOfClans(divisors: [Int], k: Int) -> Int {

    var r = Set<Int>()
    
    for i in 1..<k {
        var v = 0;
        for d in divisors {
            v = v << 1 | (i % d == 0 )
        }
    }
    
    return 0
}


let divisors = [2, 3]
let k = 6

let r = numberOfClans(divisors: divisors, k: k)

print( r )


int numberOfClans(std::vector<int> divisors, int k) {
    std::set<int> r;
    for (int i = 1; i <= k; i++) {
        int v = 0;
        for (d : divisors)
            v = v << 1 | (i % d == 0);
        r.insert(v);
    }
    return r.size();
}
