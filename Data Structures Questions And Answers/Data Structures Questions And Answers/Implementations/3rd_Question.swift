//
//  3rd_Question.swift
//  Data Structures Questions And Answers
//
//  Created by Alex Cevallos on 10/17/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import Foundation

class ThirdQuestion {
    
    // Given a binary array, sort it in linear time and constant space. Output should print contain all zeros followed by all ones
    // EXAMPLE 1,0,1,0,1,0,0,1 -> 0,0,0,0,1,1,1,1
    
    func sortBinaryArrayInLinearTime(arr: [Int]) -> [Int] {
        
        // Keep track of how many zeros
        var numberOfZeros = 0
        for number in arr {
            
            if number == 0 {
                
                numberOfZeros += 1
            }
        }
        
        // Final array to send out
        var sortedArray: [Int] = []
        for (index, _) in arr.enumerated() {
            
            if index < numberOfZeros {
                
                sortedArray.append(0)
            } else {
                
                sortedArray.append(1)
            }
        }
        
        
        
        return sortedArray
    }
}
