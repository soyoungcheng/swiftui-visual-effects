/**
* SwiftUIVisualEffects
*/

#if os(iOS)

import SwiftUI

extension EnvironmentValues {
	var blurEffectStyle: UIBlurEffect.Style {
		get {
			self[BlurEffectStyleKey.self]
		}
		set {
			self[BlurEffectStyleKey.self] = newValue
		}
	}
}

#endif
