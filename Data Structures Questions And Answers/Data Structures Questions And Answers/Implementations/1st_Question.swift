//
//  1_FindPair_GivenSum_InArray.swift
//  Data Structures Questions And Answers
//
//  Created by Alex Cevallos on 10/15/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import Foundation

struct FirstQuestion {
    
    // Find pair with given Sum in The Array
    // Given an unsorted array of integers, find a pair with given sum in it
    // EXAMPLE -> array = [8,7,2,5,3,1], sum = 10 --> pair found at indexes 0 and 2
    
    func findPairOfGivenArray(arr: [Int], sum: Int) -> (Int, Int) {
        
        for (firstNumberIndex, firstNumber) in arr.enumerated() {
            
            for (secondNumberIndex, secondNumber) in arr.enumerated() {
                
                if firstNumberIndex == secondNumberIndex {
                    continue
                }
                
                if firstNumber + secondNumber == sum {
                    
                    return (firstNumberIndex, secondNumberIndex)
                }
                
            }
            
        }
        return (0, 0)
    }
    
    // Quicker
    func findPairOfGivenArrayQuicker(arr: [Int], sum: Int) -> (Int, Int) {
        
        let sortedArray = arr.sorted()
        
        var low = 0
        var high = sortedArray.count - 1
        
        while low < high {
            
            if sortedArray[low] + sortedArray[high] == sum {
                
                return (low, high)
            }
            
            if ((sortedArray[low] + sortedArray[high]) < sum) {
                
                low += 1
            } else {
                
                high -= 1
            }
        }
        
        return (0, 0)
    }
}
