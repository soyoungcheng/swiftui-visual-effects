/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct _ViewRepresentable<Content: View>: NSViewRepresentable {
	init(content: Content) {}
	
	func makeNSView(context: Context) -> NSView {
		NSView()
	}
	
	func updateNSView(_ nsView: NSView, context: Context) {}
}

#endif
