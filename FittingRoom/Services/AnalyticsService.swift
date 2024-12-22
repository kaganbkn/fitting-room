import Firebase
import FirebaseAnalytics

final class AnalyticsService {
    static let shared = AnalyticsService()
    private init() {}
    
    func logEvent(_ name: String, parameters: [String: Any]? = nil) {
        Analytics.logEvent(name, parameters: parameters)
    }
    
    func setUserProperty(_ value: String?, forName name: String) {
        Analytics.setUserProperty(value, forName: name)
    }
    
    func setUserID(_ userID: String?) {
        Analytics.setUserID(userID)
    }
} 