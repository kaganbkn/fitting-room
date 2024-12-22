import Foundation

enum LogLevel {
    case debug
    case info
    case warning
    case error
}

final class Logger {
    static let shared = Logger()
    private init() {}
    
    func log(_ message: String, level: LogLevel = .debug, file: String = #file, function: String = #function, line: Int = #line) {
        #if DEBUG
        let filename = (file as NSString).lastPathComponent
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let timestamp = dateFormatter.string(from: Date())
        
        let levelString: String = {
            switch level {
            case .debug: return "📘 DEBUG"
            case .info: return "📗 INFO"
            case .warning: return "📙 WARNING"
            case .error: return "📕 ERROR"
            }
        }()
        
        print("[\(timestamp)] \(levelString) [\(filename):\(line)] \(function) -> \(message)")
        #endif
    }
} 