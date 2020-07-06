/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

struct VisualEffectView<Content: View>: NSViewRepresentable {
	init(material: NSVisualEffectView.Material, allowsVibrancy: Bool, @ViewBuilder content: () -> Content) {
		self.material = material
		self.allowsVibrancy = allowsVibrancy
		self.content = content()
	}
	
	func makeNSView(context: Context) -> NSVisualEffectView {
		let visualEffectView = NSVisualEffectView()
		visualEffectView.addSubview(
			allowsVibrancy ? HostingView(rootView: content) : NSHostingView(rootView: content)
		)
		visualEffectView.material = material
		visualEffectView.subviews.first?.autoresizingMask = [.width, .height]
		
		return visualEffectView
	}
	
	func updateNSView(_ nsView: NSVisualEffectView, context: Context) {}
	
	private let allowsVibrancy: Bool
	private let content: Content
	private let material: NSVisualEffectView.Material
}

private extension VisualEffectView {
	final class HostingView<Content: View>: NSHostingView<Content> {
		override var allowsVibrancy: Bool {
			true
		}
	}
}

#endif
