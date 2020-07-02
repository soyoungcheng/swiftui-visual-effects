/**
* SwiftUIVisualEffects
*/

import SwiftUI

/// Creates a blur effect.
public struct BlurEffectModifier: ViewModifier {
	public init() {}
	
	#if os(iOS)
	public func body(content: Content) -> some View {
		content
			.overlay(_BlurVisualEffectViewRepresentable())
	}
	
	#elseif os(macOS)
	public func body(content: Content) -> some View {
		content
			.overlay(VisualEffectViewRepresentable())
	}
	
	#endif
}
