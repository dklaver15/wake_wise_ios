//
//  CurrentTimeView.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/15/25.
//

import SwiftUI

struct CurrentTimeView: View {
	var formattedTime: String
	
    var body: some View {
			RoundedRectangle(cornerRadius: 10, style: .continuous)
				.fill(Color.clear)
				.stroke(Color.gray)
				.containerRelativeFrame(.horizontal) { width, _ in
					width * 0.75
				}
				.containerRelativeFrame(.vertical) { height, _ in
					height * 0.2
				}
				.overlay {
					VStack {
						Text(formattedTime)
							.foregroundColor(.white)
							.font(.system(.largeTitle, design: .monospaced, weight: .bold))

						Spacer()
							.containerRelativeFrame(.vertical) { height, _ in
								height * 0.025
							}

						Text(Date().formatted(.dateTime.day(.twoDigits).weekday(.wide).month(.wide)))
							.foregroundColor(.white)
							.font(.footnote)
							.scaleEffect(0.8)
					}
				}
    }
}
