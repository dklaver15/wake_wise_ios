//
//  HomeView.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/12/25.
//

import SwiftData
import SwiftUI

struct HomeView: View {
	@Environment(\.modelContext) private var modelContext
	@State private var alarms: [Alarm] = []
	@State private var timeManager = TimeManager()
	@State private var formattedTime = ""
	let screenWidth = UIScreen.main.bounds.width

	var body: some View {
		ZStack(alignment: .top) {
			Color.darkBackground
				.ignoresSafeArea()

			VStack(alignment: .center) {
				CurrentTimeView(formattedTime: formattedTime)
					.onAppear {
						formattedTime = timeManager.currentFormattedTime()
					}

				ToolbarView(screenWidth: screenWidth)
				
				AlarmList()
			}
		}
	}

	//	private func addItem() {
	//		withAnimation {
	//			let newItem = Item(timestamp: Date())
	//			modelContext.insert(newItem)
	//		}
	//	}
	//
	//	private func deleteItems(offsets: IndexSet) {
	//		withAnimation {
	//			for index in offsets {
	//				modelContext.delete(items[index])
	//			}
	//		}
	//	}
}

#Preview {
	HomeView()
		.modelContainer(for: Item.self, inMemory: true)
}
