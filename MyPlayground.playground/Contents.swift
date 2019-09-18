import UIKit

var str = "Hello, playground"


let x = String("int main(int argc, const char * argv[])".utf8CString )

let y = String("i​n​t​ ​m​a​i​n​(​i​n​t​ ​a​r​g​c​,​ ​c​o​n​s​t​ ​c​h​a​r​ ​*​ ​a​r​g​v​[​]​)".utf8CString )

int main(int argc, const char * argv[]) {

print( type(of: x), type(of: y))
print( x.count, y.count )

let z = zip(x, y)


for (a,b) in z {
    
    print( a, b, type(of: a), type(of: b) )
    
}


print( x == y )

