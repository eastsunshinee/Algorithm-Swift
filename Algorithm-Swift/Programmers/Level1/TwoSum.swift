//
//  키패드누르기.swift
//  Algorithm-Swift
//
//  Created by 김동현 on 3/7/25.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numDict = [Int: Int]()
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = numDict[complement] {
            return [complementIndex, index]
        }
        numDict[num] = index
    }
    return []
}

func run_TwoSum() {
    let nums = [2, 7, 11, 15]
    let target = 9
    let result = twoSum(nums, target)
    print("Two Sum 결과:", result) // 예상 출력: [0, 1]
}
