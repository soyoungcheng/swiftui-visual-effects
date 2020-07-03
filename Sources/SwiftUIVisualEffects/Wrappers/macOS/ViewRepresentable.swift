/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct _ViewRepresentable<Content: View>: NSViewRepresentable {
	init(content: Content) {
		self.content = content
	}
	
	func makeNSView(context: Context) -> NSView {
		NSView()
	}
	
	func updateNSView(_ nsView: NSView, context: Context) {}
	
	private let content: Content
}

#endif
