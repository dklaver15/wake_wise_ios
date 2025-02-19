//
//  ContainerSize.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/13/25.
//

import Foundation
import SwiftUICore

struct SizePreferenceKey: PreferenceKey {
		static var defaultValue: CGSize = .zero
		static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
				value = nextValue()
		}
}

extension View {
		func reportSize(_ binding: Binding<CGSize>) -> some View {
				self.background(
						GeometryReader { geo in
								Color.clear
										.preference(key: SizePreferenceKey.self, value: geo.size)
						}
				)
				.onPreferenceChange(SizePreferenceKey.self) { size in
						binding.wrappedValue = size
				}
		}
}
