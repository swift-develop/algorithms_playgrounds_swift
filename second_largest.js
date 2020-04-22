console.log("hello")
/**
*   Return the second largest number in the array.
*   @param {Number[]} nums - An array of numbers.
*   @return {Number} The second largest number in the array.
**/
function getSecondLargest(nums) {
    // Complete the function
    let first
    let second

    nums.forEach(e => {
        if ( first === undefined ) {
            first = e
            second = e
        }

        first = Math.max( e, first )

        if ( e < first ) {
            second = Math.max( e, second )
        }
        console.log( e, first, second )
    })

    

    return second
}


let test = "1 2 3 4 5 6 7 8 9 10".split(" ")

console.log( test )

let r = getSecondLargest( test )

console.log( r )

