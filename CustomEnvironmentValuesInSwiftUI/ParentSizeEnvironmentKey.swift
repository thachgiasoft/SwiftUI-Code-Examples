//
// Example code for article: https://lostmoa.com/blog/CustomEnvironmentValuesInSwiftUI/
//

import SwiftUI

struct ParentSizeEnvironmentKey: EnvironmentKey {
    static let defaultValue: CGSize? = nil
}

extension EnvironmentValues {
    var parentSize: CGSize? {
        get {
            return self[ParentSizeEnvironmentKey]
        }
        set {
            self[ParentSizeEnvironmentKey] = newValue
        }
    }
}

extension View {
    func parentSize(_ size: CGSize?) -> some View {
        return self.environment(\.parentSize, size)
    }
}
