//
//  2_PrintAllSubArray_With0Sum.swift
//  Data Structures Questions And Answers
//
//  Created by Alex Cevallos on 10/15/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import Foundation

struct SecondQuestion {
    
    // Print All sub array with 0 sum
    // Given an array of integers, print all subarrays having 0 sum
    // EXAMPLE: [4,2,-3,1,0,4] --> [-3,-1,0,4] 
    // EXAMPLE: [3,4,-7,3,1,3,1,-4,-2,-2] --> [3,4,-7] && [4,-7,3]
    
    func findSubArrayWithZeroSum(numbers: [Int]) -> [[Int]] {
        
        // Keep track of index
        // Go through and check from that index
        // Add when 0 if found, add numbers and keep going to find another match
        
        // Keeps track of all our numbers to return
        var numbersSumToZero = [[Int]]()

        // Go through all elements and keep adding numbers to the right
        for (originalIndex, originalNumber) in numbers.enumerated() {
            
            // Initial number
            var sum = originalNumber
            
            // Add number to right, check if equal to 0
            for (toCheckIndex, toCheckNumber) in numbers.enumerated() {
                
                // Skip current index
                if toCheckIndex <= originalIndex {
                    
                    continue
                }
                
                // Add to ongoing sum
                sum += toCheckNumber
                
                // if sum is 0, add to total count.. but keep going!
                if sum == 0 {
                    
                    // Make sure the number has not been added before
                    if !numbersSumToZero.contains(where: { $0 == Array(numbers[originalIndex...toCheckIndex]) }) {
                        numbersSumToZero.append(Array(numbers[originalIndex...toCheckIndex]))
                    }
                }
            }
        }
        
        return numbersSumToZero
    }
}
