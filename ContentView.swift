//
//  ContentView.swift
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
  @StateObject var awesomeTeam = AwesomeTeam()
  
  var body: some View {
    AwesomeTeamListView()
      .environmentObject(awesomeTeam)
      .navigationTitle("Team Members: ")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
