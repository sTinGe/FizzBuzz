//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by sTinGe Su on 2015/7/27.
//  Copyright (c) 2015年 sTinGe Su. All rights reserved.
//

import UIKit
import XCTest

class FizzBuzzTests: XCTestCase {
  var fizzbuzz: FizzBuzz!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.fizzbuzz = FizzBuzz()
    
  }
  
  func testCheck_returnsFizzBuzz() {
    XCTAssertEqual(self.fizzbuzz.check(15), "FizzBuzz")
  }
  
  func testCheck_returnsFizz() {
    XCTAssertEqual(self.fizzbuzz.check(9), "Fizz")
  }
  
  func testCheck_returnsBuzz() {
    XCTAssertEqual(self.fizzbuzz.check(10), "Buzz")
  }
  
  func testCheck_returnsBumber() {
    XCTAssertEqual(self.fizzbuzz.check(11), "11")
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    XCTAssert(true, "Pass")
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock() {
      // Put the code you want to measure the time of here.
    }
  }
  
}
