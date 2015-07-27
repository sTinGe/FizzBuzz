//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by sTinGe Su on 2015/7/27.
//  Copyright (c) 2015年 sTinGe Su. All rights reserved.
//

import Foundation
class FizzBuzz {
  func check(number: Int) -> String {
    switch (number % 3, number % 5){
    case (0, 0): return "FizzBuzz"
    case (_, 0): return "Buzz"
    case (0, _): return "Fizz"
    case (_, _): return "\(number)"
    }
  }
}