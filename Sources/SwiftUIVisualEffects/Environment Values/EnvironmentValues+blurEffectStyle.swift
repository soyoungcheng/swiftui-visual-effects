/**
* SwiftUIVisualEffects
*/

import SwiftUI

extension EnvironmentValues {
	#if os(iOS)
	var blurEffectStyle: UIBlurEffect.Style {
		get {
			self[BlurEffectStyleKey.self]
		}
		set {
			self[BlurEffectStyleKey.self] = newValue
		}
	}
	
	#elseif os(macOS)
	var blurEffectStyle: NSVisualEffectView.Material {
		get {
			self[BlurEffectStyleKey.self]
		}
		set {
			self[BlurEffectStyleKey.self] = newValue
		}
	}
	
	#endif
}
