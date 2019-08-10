import UIKit

func evenDigitsOnly(n: Int) -> Bool {
    return String(n).flatMap { Int( String( $0 ) )  }.allSatisfy { $0 % 2 == 0 }
}



let r = evenDigitsOnly(n: 248622)

print( r )


String( 25325 ).utf8
String( 25325 )


let test = "Test99"
