/**
* SwiftUIVisualEffects
*/

#if os(macOS)

import SwiftUI

public struct VisualEffectView<Content: View>: NSViewRepresentable {
	public init(
		material: NSVisualEffectView.Material,
		allowsVibrancy: Bool,
		blendingMode: NSVisualEffectView.BlendingMode = .behindWindow,
		@ViewBuilder content: () -> Content
	) {
		self.material = material
		self.blendingMode = blendingMode
		self.allowsVibrancy = allowsVibrancy
		self.content = content()
	}
	
	public func makeNSView(context: Context) -> NSVisualEffectView {
		let visualEffectView = NSVisualEffectView()
		visualEffectView.addSubview(
			allowsVibrancy ? HostingView(rootView: content) : NSHostingView(rootView: content)
		)
		visualEffectView.blendingMode = blendingMode
		visualEffectView.material = material
		visualEffectView.subviews.first?.autoresizingMask = [.width, .height]
		
		return visualEffectView
	}
	
	public func updateNSView(_ nsView: NSVisualEffectView, context: Context) {}
	
	private let allowsVibrancy: Bool
	private let blendingMode: NSVisualEffectView.BlendingMode
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
