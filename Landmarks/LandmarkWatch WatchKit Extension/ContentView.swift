//
//  ContentView.swift
//  LandmarkWatch WatchKit Extension
//
//  Created by lev on 07.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
