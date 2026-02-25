import Foundation

@objc public class BundlePath: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
