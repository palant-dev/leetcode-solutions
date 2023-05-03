//: [Previous](@previous)

import Foundation

let x = 1211
let convertedX = String(x)

var dictNumb: [Int:String] = [:]


for (i, value) in convertedX.enumerated() {
    dictNumb[value] = i
    if i.isMultiple(of: 2) {

    }
}

//: [Next](@next)
