//
//  FittingRoomApp.swift
//  FittingRoom
//
//  Created by Hilal Aksoy on 21.12.2024.
//

import SwiftUI
import Firebase

@main
struct FittingRoomApp: App {
    init() {
    //    FirebaseApp.configure()
        setupInitialConfigurations()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func setupInitialConfigurations() {
        // Dil ayarını yap
        LocalizationManager.shared.setLanguage(.turkish)
        
        // Log örneği
        Logger.shared.log("Uygulama başlatıldı")
    }
}
