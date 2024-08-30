import Foundation

@objc public class MyClubAppWidget: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
