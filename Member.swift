//
//  Member.swift
//  Team
//
//  Created by Tomasz Rej on 23/03/2023.
//

import Foundation

class Member: Identifiable {
  var name: String
  var age: Int
  var magicNumber: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
    self.magicNumber = 0
  }
  
}
