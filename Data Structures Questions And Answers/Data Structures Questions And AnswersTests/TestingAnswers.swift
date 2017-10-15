//
//  TestingAnswers.swift
//  TestingAnswers
//
//  Created by Alex Cevallos on 10/15/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import XCTest

class TestingAnswers: XCTestCase {
    
    // MARK: Find pair with given Sum in The Array
    // Given an unsorted array of integers, find a pair with given sum in it
    // EXAMPLE -> array = [8,7,2,5,3,1], sum = 10 --> pair found at indexes 0 and 2
    func testFirstQuestion() {
        
        let firstQuestion = FirstQuestion()
        
        let indexes = firstQuestion.findPairOfGivenArray(arr: [8,7,2,5,3,1], sum: 10)
        XCTAssertTrue(indexes.0 == 0)
        XCTAssertTrue(indexes.1 == 2)
        
        // Solution is N^2 response time
    }
    
    func testFirstQuestion_Quicker() {
        
        let firstQuestion = FirstQuestion()
        
        let indexes = firstQuestion.findPairOfGivenArrayQuicker(arr: [8,7,2,5,3,1], sum: 10)
        
        XCTAssertTrue(indexes.0 == 1)
        XCTAssertTrue(indexes.1 == 5)
        
        // Solution is NLogN response time
    }
    
    // MARK: Return All sub array with 0 sum
    // Given an array of integers, print all subarrays having 0 sum
    // EXAMPLE: [4,2,-3,-1,0,4] --> [-3,-1,0,4] && [0]
    // EXAMPLE: [3,4,-7,3,1,3,1,-4,-2,-2] --> 6 Possible combinations
    func testSecondQuestion() {
        
        let secondQuestion = SecondQuestion()
        let subArrays = secondQuestion.findSubArrayWithZeroSum(numbers: [4,2,-3,-1,0,4])
        
        XCTAssertTrue(subArrays[0] == [-3,-1,0,4])
    }
    
    func testSecondQuestion_MoreNumbers() {
        
        let secondQuestion = SecondQuestion()
        let subArrays = secondQuestion.findSubArrayWithZeroSum(numbers: [3,4,-7,3,1,3,1,-4,-2,-2])
        
        XCTAssertEqual(6, subArrays.count)
    }
}
