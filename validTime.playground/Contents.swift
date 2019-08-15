import UIKit

func validTime(time: String) -> Bool {
    
    let regEx = "^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$"
    
    
    
    guard let test = time.range(of: "^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$", options: .regularExpression ) else { return false}
    
    print( time[test] )
    
    
    return true
}


let time = "23:58"

let r = validTime(time: time)

print( r )
