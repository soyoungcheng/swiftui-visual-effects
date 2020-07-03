/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct _VisualEffectViewRepresentable: NSViewRepresentable {
	func makeNSView(context: Context) -> NSVisualEffectView {
		let visualEffectView = NSVisualEffectView()
		visualEffectView.material = context.environment.blurEffectStyle
		
		return visualEffectView
	}
	
	func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
		nsView.material = context.environment.blurEffectStyle
	}
}

#endif
