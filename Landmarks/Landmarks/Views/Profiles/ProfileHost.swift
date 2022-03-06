//
//  ProfileHost.swift
//  Landmarks
//
//  Created by lev on 06.03.2022.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile: Profile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
