//
//  AlarmList.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/16/25.
//

import SwiftUI

struct AlarmList: View {
	@Environment(\.modelContext) private var modelContext
	@State private var alarms: [Alarm] = []
	
    var body: some View {
			ScrollView([.vertical]) {
				ForEach(alarms) { alarm in
					Text(alarm.name)
						.background(Color.clear)
				}
			}
    }
}

#Preview {
    AlarmList()
}
