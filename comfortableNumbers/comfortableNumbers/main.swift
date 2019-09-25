func comfortableNumbers(l: Int, r: Int) -> Int {
    
    var comfortablePairs: Set<String> = []
    
    for i in l...r {
        
        let sum = Array(String(i)).reduce(0) { $0 + ( Int(String($1))! ) }
        let upper = min(r, i+sum)
        
        for j in i...upper {
            //can't equal
            if j == i { continue }
            //but is j comfy with i
            let sumj = Array(String(j)).reduce(0) { $0 + ( Int(String($1))! ) }
            
            if i >= j - sumj && i <= j + sumj {
                comfortablePairs.insert("\(i),\(j)")
            }
        }
    }
    return comfortablePairs.count
}



let l = 12
let r = 108
let result = comfortableNumbers(l:l,r:r)

print( result )
