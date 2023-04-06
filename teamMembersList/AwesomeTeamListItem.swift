//
//  AwesomeTeamListItem.swift
//  Team
//
//  Created by Tomasz Rej on 28/03/2023.
//

import SwiftUI

struct AwesomeTeamListItem: View {
  let member: Member
  
  var body: some View {
    HStack {
      Text(member.name)
      Text(String(member.magicNumber))
      Spacer()
    }
  }
  
}
