import UIKit

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    
    var aPoints = 0
    var bPoints = 0
    
    let combined = zip(a,b)
    
    for (a,b) in combined {
        
        if a > b{
            aPoints += 1
        } else if a < b {
            bPoints += 1
        }
    }
    
    
    return [aPoints, bPoints]
}


print( compareTriplets(a: [1,2,3], b: [3,2,1] ) )
