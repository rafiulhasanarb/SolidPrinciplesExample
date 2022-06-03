//
//  ProfileView.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 1/6/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileModel: ProfileViewModel
    var body: some View {
        VStack {
            Text(profileModel.text)
                .font(.title)
            Text(profileModel.commentModel.name ?? "NA")
                .font(.title3)
            Text(profileModel.commentModel.email ?? "NA")
                .font(.title2)
            Text(profileModel.commentModel.body ?? "NA")
                .font(.body)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
