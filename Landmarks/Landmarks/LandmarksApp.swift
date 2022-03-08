//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by lev on 02.03.2022.
//

import SwiftUI
import MapKit

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(
            controller: NotificationController.self,
            category  : "LandmarkNear"
        )
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
