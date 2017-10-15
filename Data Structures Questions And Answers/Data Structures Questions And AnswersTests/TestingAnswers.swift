//
//  TestingAnswers.swift
//  TestingAnswers
//
//  Created by Alex Cevallos on 10/15/17.
//  Copyright © 2017 Alex Cevallos. All rights reserved.
//

import XCTest

class TestingAnswers: XCTestCase {
    
    // Find pair with given Sum in The Array
    // Given an unsorted array of integers, find a pair with given sum in it
    // EXAMPLE -> array = [8,7,2,5,3,1], sum = 10 --> pair found at indexes 0 and 2
    func testFirstQuestion() {
        
        let findPair_GivenSum_InArray = FindPair_GivenSum_InArray()
        
        let indexes = findPair_GivenSum_InArray.findPairOfGivenArray(arr: [8,7,2,5,3,1], sum: 10)
        XCTAssertTrue(indexes.0 == 0)
        XCTAssertTrue(indexes.1 == 2)
        
        // Solution is N^2 response time
    }
    
    func testFirstQuestion_Quicker() {
        
        let findPair_GivenSum_InArray = FindPair_GivenSum_InArray()
        
        let indexes = findPair_GivenSum_InArray.findPairOfGivenArrayQuicker(arr: [8,7,2,5,3,1], sum: 10)
        
        XCTAssertTrue(indexes.0 == 1)
        XCTAssertTrue(indexes.1 == 5)
        
        // Solution is NLogN response time
    }
    
}
