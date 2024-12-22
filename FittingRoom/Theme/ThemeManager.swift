import SwiftUI

enum ThemeType {
    case light
    case dark
}

final class ThemeManager {
    static let shared = ThemeManager()
    private init() {}
    
    var currentTheme: ThemeType = .light
    
    struct Colors {
        static let primary = Color("PrimaryColor")
        static let secondary = Color("SecondaryColor")
        static let background = Color("BackgroundColor")
        static let text = Color("TextColor")
    }
    
    struct Fonts {
        static let title = Font.custom("SFPro-Bold", size: 24)
        static let heading = Font.custom("SFPro-Semibold", size: 18)
        static let body = Font.custom("SFPro-Regular", size: 16)
        static let caption = Font.custom("SFPro-Regular", size: 14)
    }
    
    struct Spacing {
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
    }
} 