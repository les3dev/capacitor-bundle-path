import Foundation

@objc public class BundlePath: NSObject {
    @objc public func get_path(_ path: String) -> String? {
        return Bundle.main.path(forResource: path)
    }
}
