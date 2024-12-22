import Foundation

enum Language: String {
    case turkish = "tr"
    case english = "en"
}

final class LocalizationManager {
    static let shared = LocalizationManager()
    private init() {}
    
    private var bundle: Bundle = .main
    var currentLanguage: Language = .turkish
    
    func setLanguage(_ language: Language) {
        currentLanguage = language
        if let languagePath = Bundle.main.path(forResource: language.rawValue, ofType: "lproj"),
           let languageBundle = Bundle(path: languagePath) {
            bundle = languageBundle
        }
    }
    
    func localizedString(for key: String) -> String {
        return bundle.localizedString(forKey: key, value: nil, table: nil)
    }
} 