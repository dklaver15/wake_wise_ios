//
//  Colors.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/12/25.
//

import SwiftUI

extension Color {
	static let darkBackground = Color.init(netHex: 0x23272E)
	static let tertiary = Color.init(netHex: 0x0F4C75)
	static let secondary = Color.init(netHex: 0x3282B8)
	static let primary = Color.init(netHex: 0xBBE1FA)

	init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0)
	}

	init(netHex: Int) {
		self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
	}
}
