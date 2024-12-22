//
//  ContentView.swift
//  FittingRoom
//
//  Created by Hilal Aksoy on 21.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: ThemeManager.Spacing.medium) {
                Text("app.welcome".localized)
                    .font(ThemeManager.Fonts.title)
                    .foregroundColor(ThemeManager.Colors.text)
                    .onAppear {
                        // Örnek bir analytics eventi
                        AnalyticsService.shared.logEvent("welcome_screen_viewed")
                    }
                
                // Parametreli kullanım örneği
                Text("app.welcome".localized(with: "Kullanıcı"))
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(ThemeManager.Colors.primary)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(ResponsiveSize.value(iPhone: 16, iPad: 32))
            .background(ThemeManager.Colors.background)
        }
    }
}

#Preview {
    ContentView()
}
