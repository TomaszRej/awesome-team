//
//  AddTeamMemberForm.swift
//  Team
//
//  Created by Tomasz Rej on 29/03/2023.
//

import SwiftUI

struct AddTeamMemberForm: View {
  @EnvironmentObject var awesomeTeam: AwesomeTeam
  
  @Binding var showAddMemberBottomSheet: Bool
  
  @State private var teamsMemberName: String = ""
  
  var body: some View {
    TextField(
      "Enter Teams Member Name...",
      text: $teamsMemberName
    )
    .onSubmit {
      awesomeTeam.registerMemberWithName(name: teamsMemberName)
      showAddMemberBottomSheet.toggle()
    }
    .textInputAutocapitalization(.never)
    .disableAutocorrection(true)
    .border(.secondary)
    .textFieldStyle(RoundedBorderTextFieldStyle())
    .padding([.leading, .trailing], 50)
  }
}
