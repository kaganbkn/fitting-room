import UIKit

enum DeviceType {
    case iPhone
    case iPad
    
    static var current: DeviceType {
        return UIDevice.current.userInterfaceIdiom == .pad ? .iPad : .iPhone
    }
}

struct ResponsiveSize {
    static func value(iPhone: CGFloat, iPad: CGFloat) -> CGFloat {
        return DeviceType.current == .iPad ? iPad : iPhone
    }
} 