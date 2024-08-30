import Foundation
import WidgetKit

@objc public class MyClubAppWidget: NSObject {
    
    // Echo method that simply returns the input value
    @objc public func echo(_ value: String) -> String {
        print("Echoing value: \(value)")
        return value
    }

    // Method to set an item in UserDefaults with App Group support
    @objc public func setItem(key: String, value: String, group: String) -> Bool {
        guard let userDefaults = UserDefaults(suiteName: group) else {
            print("Could not access UserDefaults for group: \(group)")
            return false
        }
        
        userDefaults.set(value, forKey: key)
        print("Set value: \(value) for key: \(key) in group: \(group)")
        return true
    }

    // Method to reload all widget timelines
    @objc public func reloadAllTimelines() -> Bool {
        if #available(iOS 14.0, *) {
            WidgetCenter.shared.reloadAllTimelines()
            print("Reloaded all widget timelines.")
            return true
        } else {
            print("reloadAllTimelines is not available in iOS 13 or earlier.")
            return false
        }
    }

        // Method to reload specific widget timelines by kind
    @objc public func reloadTimelines(ofKind: String) -> Bool {
        if #available(iOS 14.0, *) {
            WidgetCenter.shared.reloadTimelines(ofKind: ofKind)
            print("Reloaded timelines of kind: \(ofKind)")
            return true
        } else {
            print("reloadTimelines is not available in iOS 13 or earlier.")
            return false
        }
    }
}