//
//  ContentView.swift
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

import SwiftUI


struct AwesomeTeamListView: View {
  @EnvironmentObject var awesomeTeam: AwesomeTeam
  @State private var showAddMemberBottomSheet = false
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(awesomeTeam.getMembers()) { member in
          NavigationLink {
            TeamMemberDetailsView(name: member.name, number: member.magicNumber)
          } label: {
            AwesomeTeamListItem(member: member)
          }
        }
      }
      .listStyle(.grouped)
      .navigationBarTitle(Text("Team Members: "), displayMode: .inline)
      .navigationBarItems( trailing:
                            Button {
        showAddMemberBottomSheet.toggle() } label: {
          Image(systemName: "plus.circle")
        }
        .sheet(isPresented: $showAddMemberBottomSheet) {
          AddTeamMemberForm(showAddMemberBottomSheet: $showAddMemberBottomSheet)
            .presentationDetents([.medium, .large])
        }
      )
    }
  }
}

struct AwesomeTeamListView_Previews: PreviewProvider {
  static var previews: some View {
    AwesomeTeamListView()
  }
}

