import UIKit


var count = 0
for bit in 0 ..< (1 << count) { print(bit)}

func sumArray(array: [Character]) -> Int {
    let str = String(array)
    let intArray = str.split(separator: "+").map { el in Int(el)! }
    let sum = intArray.reduce(0, { (result, item) -> Int in
        return result + item
    })
    return sum
}

sumArray(array: ["2", "3", "+", "4"])

var a = [1, 1, 2, 3, 5]
a.insert(0, at: 2)
print(a) // [0, 1, 1, 2, 3, 5]
