/*
 
 We will call a natural number a "doubleton number" if it contains exactly two distinct digits. For example, 23, 35, 100, 12121 are doubleton numbers, and 123 and 9980 are not.

 For a given natural number n (from 1 to 1 000 000), you need to find the next doubleton number. If n itself is a doubleton, return the next bigger than n.
 
 */

import Foundation

// MARK: Solution 1
func doubleton(_ num: Int) -> Int {
    var result = num + 1
    if isDoubleton(result) {
        return result
    }
    return doubleton(result)
}

func isDoubleton(_ num: Int) -> Bool {
    let setFromNum = Set(String(num))
    return setFromNum.count == 2
}

// MARK: Solution 2

func doubleton1(_ num: Int) -> Int {
    return Set(String(num + 1)).count == 2 ? num + 1 : doubleton(num + 1)
}
