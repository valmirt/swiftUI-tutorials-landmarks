//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Valmir Junior on 07/03/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
            WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
