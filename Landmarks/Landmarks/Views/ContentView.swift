//
//  ContentView.swift
//  Landmarks
//
//  Created by lev on 02.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
