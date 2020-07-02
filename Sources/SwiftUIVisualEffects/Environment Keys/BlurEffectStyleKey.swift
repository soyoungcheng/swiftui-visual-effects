/**
* SwiftUIVisualEffects
*/

import SwiftUI

struct BlurEffectStyleKey: EnvironmentKey {
	#if os(iOS)
	static var defaultValue: UIBlurEffect.Style = .systemMaterial // (Per the human-interface guidelines.)
	
	#elseif os(macOS)
	static var defaultValue: NSVisualEffectView.Material = .contentBackground; #warning("verify default value")
	
	#endif
}
