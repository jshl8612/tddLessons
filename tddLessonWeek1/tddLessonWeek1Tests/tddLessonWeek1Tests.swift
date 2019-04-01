//
//  tddLessonWeek1Tests.swift
//  tddLessonWeek1Tests
//
//  Created by Shenglong Jiang on 28/03/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import XCTest
@testable import tddLessonWeek1

class tddLessonWeek1Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMoneyCalculator() {
        
        let krw = Dallar(count: 5).exchange(toClass: Krw.self)
        
        XCTAssertEqual(true, krw is Krw)
        XCTAssertEqual(true, Dallar(count: 5) != Krw(count: 3000))
        XCTAssertEqual(true, Dallar(count: 5) == Krw(count: 5000))
        XCTAssertEqual(true, Dallar(count: 5) + Dallar(count: 5) == Dallar(count: 10))
        XCTAssertEqual(true, Krw(count: 5000) + Krw(count: 5000) == Krw(count: 10000))
        XCTAssertEqual(true, Krw(count: 5000) + Dallar(count: 5) == Dallar(count: 10))
        XCTAssertEqual(true, Dallar(count: 10) == Krw(count: 10000))
    }

}
