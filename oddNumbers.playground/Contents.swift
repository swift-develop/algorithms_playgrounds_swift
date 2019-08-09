import UIKit

func oddNumbers(l: Int, r: Int) -> [Int] {
    let n = (l...r).filter { $0 % 2 != 0 }
    return n
}

let k = 5
let arr = [2, 3, 1]
let r = oddNumbers(l: -100, r: +78)


print( r )
