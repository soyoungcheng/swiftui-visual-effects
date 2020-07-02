/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct _VisualEffectViewRepresentable: NSViewRepresentable {
	func makeNSView(context: Context) -> NSView {
		NSView()
	}
	
	func updateNSView(_ nsView: NSView, context: Context) {}
}

#endif
