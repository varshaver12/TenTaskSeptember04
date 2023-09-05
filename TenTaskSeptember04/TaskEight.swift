/*
 
 Given two positive integers m (width) and n (height), fill a two-dimensional list (or array) of size m-by-n in the following way:

 All the elements in the first and last row and column are 1.
 All the elements in the second and second-last row and column are 2, excluding the elements from step 1.
 All the elements in the third and third-last row and column are 3, excluding the elements from the previous steps.
 Given m = 10, n = 9, your function should return

 [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
  [1, 2, 2, 2, 2, 2, 2, 2, 2, 1],
  [1, 2, 3, 3, 3, 3, 3, 3, 2, 1],
  [1, 2, 3, 4, 4, 4, 4, 3, 2, 1],
  [1, 2, 3, 4, 5, 5, 4, 3, 2, 1],
  [1, 2, 3, 4, 4, 4, 4, 3, 2, 1],
  [1, 2, 3, 3, 3, 3, 3, 3, 2, 1],
  [1, 2, 2, 2, 2, 2, 2, 2, 2, 1],
  [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]]
 
 */

import Foundation

func createBox(_ m:Int, _ n:Int) -> [[Int]] {
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    
    for index in 0..<n {
        for indexInside in 0..<m {
            let minIndex = min(index, indexInside, n - index - 1, m - indexInside - 1)
            matrix[index][indexInside] = minIndex + 1
        }
    }
    return matrix
}


