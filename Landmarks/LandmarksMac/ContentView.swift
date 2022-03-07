//
//  ContentView.swift
//  LandmarksMac
//
//  Created by lev on 07.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
            .frame(minWidth: 700, idealWidth: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
