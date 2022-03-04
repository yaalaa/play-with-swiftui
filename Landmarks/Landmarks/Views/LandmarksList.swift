//
//  LandmarksList.swift
//  Landmarks
//
//  Created by lev on 03.03.2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark  in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
