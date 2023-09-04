/*
 
 Your task is to find the first element of an array that is not consecutive.

 By not consecutive we mean not exactly 1 larger than the previous element of the array.

 E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.

 If the whole array is consecutive then return null2.

 The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!
 
 */

import Foundation

// MARK: Solution 1

func firstNonConsecutive(_ arr: [Int]) -> Int? {
    guard var result = arr.first else {
        return nil
    }
    for item in 1..<arr.count {
        if arr[item] - result != 1 {
            return arr[item] as! Int?
        }
        result = arr[item]
    }
    
    return nil
}
