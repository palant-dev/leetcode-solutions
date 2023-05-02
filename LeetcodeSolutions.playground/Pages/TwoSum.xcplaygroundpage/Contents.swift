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

// Most rated solution


