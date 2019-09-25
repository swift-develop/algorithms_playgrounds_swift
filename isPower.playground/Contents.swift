import UIKit

var str = "Hello, playground"

func isPower(n: Int) -> Bool {
    
    let significantAmount = 1e-5
    let  n = Double( n )
    var root = 2.0
    
    repeat {
        
        var test = pow(n, 1/root)
        
        let didIMiss = 
        

        
        if abs( round( test ) - test ) < significantAmount {
            return true
        }
        root += 1.0
    } while root < n/2
    return false
}


let n = 125

let result = isPower(n: n)

print( result )
