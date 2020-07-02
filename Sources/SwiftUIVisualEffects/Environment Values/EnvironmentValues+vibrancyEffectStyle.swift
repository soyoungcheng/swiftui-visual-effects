/**
* SwiftUIVisualEffects
*/

#if os(iOS)

import SwiftUI

extension EnvironmentValues {
	var vibrancyEffectStyle: UIVibrancyEffectStyle? {
		get {
			self[VibrancyEffectStyleKey.self]
		}
		set {
			self[VibrancyEffectStyleKey.self] = newValue
		}
	}
}

#endif
