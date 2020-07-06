/**
* SwiftUIVisualEffects
*/

#if os(iOS)

import SwiftUI

public extension View {
	/// Creates a vibrancy effect.
	func vibrancyEffect() -> some View {
		ModifiedContent(content: self, modifier: VibrancyEffectModifier())
	}
}

#endif
