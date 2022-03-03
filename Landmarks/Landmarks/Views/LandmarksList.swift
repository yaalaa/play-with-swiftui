//
//  LandmarksList.swift
//  Landmarks
//
//  Created by lev on 03.03.2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])

        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
