import Foundation
import Capacitor
import WidgetKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MyClubAppWidgetPlugin)
public class MyClubAppWidgetPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "MyClubAppWidgetPlugin"
    public let jsName = "MyClubAppWidget"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "setItem", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "reloadAllTimelines", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "reloadTimelines", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = MyClubAppWidget()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func setItem(_ call: CAPPluginCall) {
        guard let key = call.getString("key") else {
            call.reject("Key must be provided")
            return
        }
        
        guard let value = call.getString("value") else {
            call.reject("Value must be provided")
            return
        }
        
        guard let group = call.getString("group") else {
            call.reject("Group must be provided")
            return
        }
        
        if let userDefaults = UserDefaults.init(suiteName: group) {
            userDefaults.set(value, forKey: key)
            call.resolve(["results": true])
            return
        }
        
        call.reject("Could not set item")
    }

    @objc func reloadAllTimelines(_ call: CAPPluginCall) {
        if #available(iOS 14.0, *) {
            WidgetCenter.shared.reloadAllTimelines()
            call.resolve(["results": true])
        } else {
            call.unavailable("Not available in iOS 13 or earlier.")
        }
    }

   @objc func reloadTimelines(_ call: CAPPluginCall) {
        guard let ofKind = call.getString("ofKind") else {
            call.reject("ofKind must be provided")
            return
        }
        if #available(iOS 14.0, *) {
            WidgetCenter.shared.reloadTimelines(ofKind: ofKind)
            call.resolve(["results": true])
        } else {
            call.unavailable("Not available in iOS 13 or earlier.")
        }
    }

}
