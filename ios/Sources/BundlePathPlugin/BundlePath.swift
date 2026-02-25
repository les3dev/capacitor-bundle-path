import Foundation

@objc public class BundlePath: NSObject {
    @objc public func get_path(_ path: String) -> String? {
        let forResource = path.components(separatedBy: "/").last?.components(separatedBy: ".").first
        let subdirectory = path.components(separatedBy: "/").dropLast().joined(separator: "/")
        let withExtension = path.components(separatedBy: "/").last?.components(separatedBy: ".").last
        // print("forResource: \(forResource ?? "nil"), withExtension: \(withExtension ?? "nil"), subdirectory: \(subdirectory)")
        // print("Bundle.main.bundleURL: \(Bundle.main.url(forResource: forResource, withExtension: withExtension, subdirectory: subdirectory))")
        return Bundle.main.url(forResource: forResource, withExtension: withExtension, subdirectory: subdirectory)?.absoluteString
    }
}
