//
//  AwesomeTeam.swift
//  Team
//
//  Created by Tomasz Rej on 19/03/2023.
//

import Foundation

class AwesomeTeam: ObservableObject {
  @Published var count = 0
  
  @Published var members = [Member]()
    
  let team = TeamClass();
  
  
  func registerMemberWithName(name: String) {
    let member = Member(name: name, age: 0)
    
    // using custom objC module to generate magicNumber for member
    let teamClass = TeamClass();
    teamClass.registerMember(withAge: 18, andName: name)
    member.magicNumber = Int(teamClass.getMembersMagicNumber(withName: name))
    
    members.append(member)
  }
    
  func getMembers() -> [Member] {
    return members;
  }
}
