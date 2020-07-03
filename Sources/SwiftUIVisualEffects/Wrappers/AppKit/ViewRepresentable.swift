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
		let visualEffectView = NSVisualEffectView()
		visualEffectView.addSubview(HostingView(rootView: content))
		visualEffectView.material = context.environment.blurEffectStyle
		visualEffectView.subviews.first?.autoresizingMask = [.width, .height]
		
		return visualEffectView
	}
	
	func updateNSView(_ nsView: NSView, context: Context) {}
	
	private let content: Content
}

private extension _ViewRepresentable {
	final class HostingView<Content: View>: NSHostingView<Content> {
		override var allowsVibrancy: Bool {
			true
		}
	}
}

#endif
