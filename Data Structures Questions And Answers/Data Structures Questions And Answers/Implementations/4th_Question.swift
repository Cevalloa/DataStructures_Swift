//
//  4th_Question.swift
//  Data Structures Questions And Answers
//
//  Created by Alex Cevallos on 10/24/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import Foundation

class FourthQuestion {
    
    // Given an array of integers, rearrange the array such that every second element of the array is greater than its left and right elements. Assume no duplicate elemnts are present in the array
    // Input: [1,2,3,4,5,6,7]
    // Output: [1,3,2,5,4,7,6]
    // Input: [9,6,8,3,7]
    // Output: [6,9,3,8,7]
    // Input: [6,9,2,5,1,4]
    // Output: [6,9,2,5,1,4]
    
    func sortEverySecondElementGreaterThanLeftAndRight(unsortedArray: [Int]) -> [Int] {
        
        // Sort 1 -> Greatest
        // Split by two, if there is a leftover, place it in array 1 (array 1 has smaller digits) (array 2 has greater digits)
        // place array 2 in after every digit in array 1
        
        let sortedLowToHigh = unsortedArray.sorted()
        let splittingPoint = Int(round(Double(sortedLowToHigh.count)/2.0))
        var firstArray = sortedLowToHigh[0...splittingPoint]
        var secondArray = sortedLowToHigh[splittingPoint..<sortedLowToHigh.count]
        
        var returnedArray: [Int] = []
        for (index, _) in sortedLowToHigh.enumerated() {
            
            if index % 2 == 0 {
                
                returnedArray.append(firstArray.first!)
                firstArray.removeFirst()
            } else {
                
                returnedArray.append(secondArray.first!)
                secondArray.removeFirst()
            }
        }
        
        return returnedArray
    }
}
