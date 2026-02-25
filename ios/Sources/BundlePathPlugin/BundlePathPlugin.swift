import Capacitor
import Foundation

@objc(BundlePathPlugin)
public class BundlePathPlugin: CAPPlugin, CAPBridgedPlugin {
    public let jsName = "BundlePath"
    public let identifier = "BundlePathPlugin"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "get_path", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = BundlePath()

    @objc func get_path(_ call: CAPPluginCall) {
        let value = call.getString("path") ?? ""
        if let path = implementation.get_path(value) {
            call.resolve(["path": path])
        } else {
            call.resolve([:])
        }
    }
}
