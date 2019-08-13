import UIKit

func differentSymbolsNaive(s: String) -> Int {
    
    var d = [Character:Int]()

    for c in s {
        d[c] = 1
    }
    return d.count
}

let s = "cabca"


print( differentSymbolsNaive(s: s))
