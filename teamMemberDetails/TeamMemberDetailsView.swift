//
//  TeamMemberDetailsView.swift
//  Team
//
//  Created by Tomasz Rej on 31/03/2023.
//

import SwiftUI

struct TeamMemberDetailsView: View {
  let name: String
  let number: Int
  
    var body: some View {
      Image("shirt")
          .resizable()
          .aspectRatio(contentMode: .fit)
      Text(name)
        .position(x: 200, y: -175)
      Text(String(number))
        .position(x: 200, y: -350)
        .font(.system(size: 72, weight: .black))
    }
}
