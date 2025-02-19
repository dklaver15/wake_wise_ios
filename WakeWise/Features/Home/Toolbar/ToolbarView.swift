//
//  ToolbarView.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/15/25.
//

import SwiftUI

struct ToolbarView: View {
	let screenWidth: CGFloat
	
    var body: some View {
			HStack {
				VStack(alignment: .leading) {
					Text("Alarms")
						.foregroundColor(.white)

					Text("Manage your alarms")
						.foregroundColor(.white)
						.font(.footnote)
						.fixedSize(horizontal: true, vertical: false)
						.scaleEffect(0.8, anchor: .leading)
						.frame(maxWidth: screenWidth * 0.4, alignment: .leading)
				}

				//					Spacer()
				//						.containerRelativeFrame(.horizontal) { width, _ in
				//							width * 0.05
				//						}

				Button(action: {

				}) {
					ZStack {
						RoundedRectangle(cornerRadius: 20, style: .circular)
							.fill(Color.clear)
							.stroke(Color.gray)
							.containerRelativeFrame(.horizontal) { width, _ in
								width * 0.26
							}
							.containerRelativeFrame(.vertical) { height, _ in
								height * 0.05
							}

						HStack(alignment: .center, spacing: 0) {
							Image(systemName: "plus.rectangle.on.folder", variableValue: 1.00)
								.symbolRenderingMode(.hierarchical)
								.foregroundColor(.white)
								.bold(true)
								.scaleEffect(0.8)

							Text("New Group")
								.foregroundColor(.white)
								.font(.caption)
								.scaleEffect(0.8)
						}
					}
				}

				Spacer()
					.containerRelativeFrame(.horizontal) { width, _ in
						width * 0.1
					}

				Button(action: {

				}) {
					HStack(alignment: .center, spacing: 0) {
						Image(systemName: "plus.circle", variableValue: 1.00)
							.symbolRenderingMode(.hierarchical)
							.foregroundColor(.white)
							.bold(true)

						Text("Add Alarm")
							.foregroundColor(.white)
							.font(.caption)
							.scaleEffect(0.8)
							.padding(0)
					}
				}
			}
			.padding(.top, 20)
    }
}
