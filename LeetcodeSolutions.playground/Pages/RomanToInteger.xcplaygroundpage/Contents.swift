//: [Previous](@previous)

import Foundation

let s = "MCMXCIV"

func romanToInt(_ s: String) -> Int {
    let romanDictionary: [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    ///I can be placed before V (5) and X (10) to make 4 and 9.
    ///X can be placed before L (50) and C (100) to make 40 and 90.
    ///C can be placed before D (500) and M (1000) to make 400 and 900.
    var prev: Character = " "
    var finalSum = 0

    for i in s {
        if prev == "I" && (i == "V" || i == "X") {
            finalSum += (romanDictionary[i]! - 2 * romanDictionary[prev]!)
        } else if prev == "X" && (i == "L" || i == "C") {
            finalSum += (romanDictionary[i]! - 2 * romanDictionary[prev]!)
        } else if prev == "C" && (i == "D" || i == "M") {
            finalSum += (romanDictionary[i]! - 2 * romanDictionary[prev]!)
        } else {
            finalSum += romanDictionary[i]!
        }
        prev = i
    }

    return finalSum
}

let solution = romanToInt(s)
print(solution)


//: [Next](@next)
