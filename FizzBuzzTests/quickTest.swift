//
//  quickTest.swift
//  FizzBuzz
//
//  Created by sTinGe Su on 2015/7/29.
//  Copyright (c) 2015年 sTinGe Su. All rights reserved.
//

import Quick
import Nimble

class quickTest: QuickSpec {
  override func spec() {
    describe("validate") {
      var fizzBuzz: FizzBuzz! = FizzBuzz()
      expect(fizzBuzz.check(15)).to(equal("FizzBuzz"))
      expect(fizzBuzz.check(3)).to(equal("Fizz"))
      expect(fizzBuzz.check(5)).to(contain("Buzz"))
      expect(fizzBuzz.check(11)).to(contain("11"))
    }
  }
}