//: Playground - noun: a place where people can play

import Foundation

// Find Pair with given sum in the Array
// Given an unsorted array of integers, find a pair with given sum in it

// input: arr = [8,7,2,5,3,1], sum = 10
// output: pair found at index 0 and 2 ( 8 + 2)

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

// Testing
print(findPairOfGivenArray(arr: [8,7,2,5,3,1], sum: 10)) // N^2 Response Time

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

print(findPairOfGivenArrayQuicker(arr: [8,7,2,5,3,1], sum: 10)) // nlogn



