//
//  LandmarksApp.swift
//  LandmarkWatch WatchKit Extension
//
//  Created by lev on 07.03.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
