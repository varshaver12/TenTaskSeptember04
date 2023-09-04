/*
 
 Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

 Examples
 "()"              =>  true
 ")(()))"          =>  false
 "("               =>  false
 "(())((()())())"  =>  true
 
 */

import Foundation

func validParentheses(_ str: String) -> Bool {
    var result = 0
    str.forEach { element in
        result += element == "(" ? 1 : result == 0 ? -2 : -1
    }
    return result == 0 ? true : false
}
