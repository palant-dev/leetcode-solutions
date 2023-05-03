//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.

class Solution {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            if nums[i] + nums[j] == target {
                return [i,j] // added return to exit early if a solution is found
             }
            }
        }
        return [] // return empty array if no solution is found
    }
}

// Most rated solution: this solution is O(n) while the one that I first wrote was O(n^2)

class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (index, value) in nums.enumerated() {

            //In this if-statement the software checks if in the dictionary there is already value, because previously we subtracted for every i the target-value creating a new possible complementary inside the dictionary. This means that if there is a value that was already registered inside the dictionary we will return the index of the current value and the one associated with target-value
            if let addent = dict[value] {
                return [addent, index]
            } else {
                dict[target - value] = index
            }
        }

        return []
    }
}
