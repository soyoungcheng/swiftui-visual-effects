/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct ViewRepresentable<Content: View>: NSViewRepresentable {
	init(content: Content) {
		self.content = content
	}
	
	func makeNSView(context: Context) -> NSVisualEffectView {
		let visualEffectView = NSVisualEffectView()
		
		return visualEffectView
	}
	
	func updateNSView(_ nsView: NSVisualEffectView, context: Context) {}
	
	private let content: Content
}

private extension ViewRepresentable {
	final class HostingView<Content: View>: NSHostingView<Content> {
		override var allowsVibrancy: Bool {
			true
		}
	}
}

#endif
