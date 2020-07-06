/**
* SwiftUIVisualEffects
*/

#if os(iOS)

import SwiftUI

/// Creates a blur effect.
public struct BlurEffect: View {
	public init() {}
	
	public var body: some View {
		_BlurVisualEffectViewRepresentable()
	}
}

#endif
