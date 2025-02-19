//
//  Alarm.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/14/25.
//

import Foundation
import SwiftData

@Model
class Alarm {
	@Attribute(.unique) var id: UUID
	var time: Date
	var daysOfWeek: [Weekday]
	var isEnabled: Bool
	var name: String

	init() {
		self.id = UUID()
		self.time = Date()
		self.daysOfWeek = []
		self.isEnabled = false
		self.name = ""
	}
}
