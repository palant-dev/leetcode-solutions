//: [Previous](@previous)

//My solution
import Foundation

let x = 121

func isPalindrome(_ x: Int) -> Bool {
    let convertedX = String(x).map { String($0) }

    for i in 0..<convertedX.count {
        if convertedX[i] != convertedX[convertedX.count - 1 - i] {
            return false
        } else {
            continue
        }
    }
    return true
}

print(isPalindrome(x))

//Interesting solution

// This functon is based on the fact that the  %10 creates a number with a comma (121 -> 12,1) and extracts the number after it to add it at a value r that is first multiplied by 10. Everytime it does this the r that was at first 0 will be summed with the extracted number, initially it will be just 0 * 10 + extractedNumber but as soon the algorythm proceeds it will recreate a new number with the same numbers but inverted. If the obtained number is minor or major than the starting one, we do not have a palindrome
func isPalindrome2(_ x: Int) -> Bool {
        return x < 0 ? false : method(x: x) == x
    }

private func method(x: Int) -> Int {
        var r = 0
        var x = x
        while x != 0 {
            r = r * 10
            r = r + x % 10
            x /= 10
        }
        return (r < Int32.min || r > Int32.max) ? 0 : r
    }

//: [Next](@next)
