print("Hello, world!")

import Foundation

func rotateImage(a: [[Int]]) -> [[Int]] {
    //printMatrix(a)

    var copy = a
    let length = a.count
    let halfLength = length/2
    for height in 0..<halfLength
    {
        //print("--------------")
        for width in height..<(length-height-1) {



            let zeroIndexLength = (length - 1)

            let x = width
            let y = height

            let x1 = zeroIndexLength - y
            let y1 = x

            let x2 = zeroIndexLength - x


            let x3 = y


            let tmp = copy[x][y]
            copy[x][y] = copy[x1][y1]
            copy[x1][y1] = copy[x2][x1]
            copy[x2][x1] = copy[x3][x2]
            copy[x3][x2] = tmp

            //print("\(x) \(y) , \(x1) \(y1), \(x2) \(y2), \(x3) \(y3)")
        }
        //print("--------------")
    }


    //printMatrix(copy)
    return copy
}




var a = [[1,2],
         [3,4]]

var  b = [[1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]]

var c = [[1,2,3,4],
         [5,6,7,8],
         [9,10,11,12],
         [13,14,15,16]]

var d = [[1,2,3,4,5],
        [6,7,8,9,10],
        [11,12,13,14,15],
        [16,17,18,19,20],
        [21,22,23,24,25],]


var e = [[1,2,3,4,5,6],
        [7,8,9,10,11,12],
        [13,14,15,16,17,18],
        [19,20,21,22,23,24],
        [25,26,27,28,29,30],
        [31,32,33,34,35,36],]



//a = rotateImage( a: a)
//
//b = rotateImage( a: b)

//c = rotateImage( a: c)

//d = rotateImage( a: d)

print(  Date() )

for _ in 0...100000 {
e = rotateImage( a: e)
e = rotateImage( a: e)
e = rotateImage( a: e)
e = rotateImage( a: e)
}

print(  Date() )
