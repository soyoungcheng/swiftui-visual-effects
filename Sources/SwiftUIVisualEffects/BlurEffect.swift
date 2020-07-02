/**
* SwiftUIVisualEffects
*/

import SwiftUI

/// Creates a blur effect.
public struct BlurEffect: View {
	public init() {}
	
	#if os(iOS)
	public var body: some View {
		_BlurVisualEffectViewRepresentable()
	}
	
	#elseif os(macOS)
	public var body: some View {
		VisualEffectViewRepresentable()
	}
	
	#endif
}
