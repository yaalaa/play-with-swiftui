//
//  LandmarkDetail.swift
//  LandmarkWatch WatchKit Extension
//
//  Created by lev on 07.03.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                CircularImage(image: landmark.image.resizable())
                    .scaledToFit()
                
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landmark.state)
                    .font(.caption)
                
                Divider()
                
                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        Group {
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
            .previewDevice("Apple Watch Series 5 - 44mm")
            .previewDisplayName("44mm")
            
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
            .previewDevice("Apple Watch Series 5 - 40mm")
            .previewDisplayName("40mm")

        }
    }
}
