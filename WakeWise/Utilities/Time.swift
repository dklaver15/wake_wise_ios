//
//  Time.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/12/25.
//

import Foundation

func getCurrentTime() -> Date {
	return Date()
}

func formatTime(_ date: Date, use24HourFormat: Bool) -> String {
	let formatter = DateFormatter()
	formatter.locale = Locale.current  // Respect regional settings

	if use24HourFormat {
		formatter.setLocalizedDateFormatFromTemplate("HHmm")
	} else {
		formatter.setLocalizedDateFormatFromTemplate("hmm a")
	}

	return formatter.string(from: date)
}

struct TimeManager {
	private var is24HourFormat: Bool = false

	mutating func toggleTimeFormat() {
		is24HourFormat.toggle()
	}

	func currentFormattedTime() -> String {
		let currentTime = getCurrentTime()
		return formatTime(currentTime, use24HourFormat: is24HourFormat)
	}
}

// SwiftUI Usage Example
//
//struct TimeView: View {
//    @State private var timeManager = TimeManager()
//    @State private var formattedTime = ""
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text(formattedTime)
//                .font(.largeTitle)
//
//            Button("Switch Format") {
//                timeManager.toggleTimeFormat()
//                formattedTime = timeManager.currentFormattedTime()
//            }
//        }
//        .onAppear {
//            formattedTime = timeManager.currentFormattedTime()
//        }
//    }
//}
