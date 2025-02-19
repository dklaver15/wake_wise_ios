//
//  BottomNavigationView.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/15/25.
//

import SwiftUI
import UIKit

enum Tab: Int, CaseIterable {
	case alarms, theme, settings

	var title: String {
		switch self {
		case .alarms: return "Alarms"
		case .theme: return "Theme"
		case .settings: return "Settings"
		}
	}

	var icon: String {
		switch self {
		case .alarms: return "alarm"
		case .theme: return "paintpalette.fill"
		case .settings: return "gearshape.fill"
		}
	}
}

struct BottomNavigationView: View {
	@State private var selectedTab: Int = 1

	init() {
		UITabBar.appearance().unselectedItemTintColor = UIColor(.gray).withAlphaComponent(0.7)
	}

	var body: some View {
		TabView(selection: $selectedTab) {
			NavigationStack {
				HomeView()
			}
			.tabItem {
				Label(Tab.alarms.title, systemImage: Tab.alarms.icon)
					.background(Color.clear)
			}
			.tag(Tab.alarms)

			NavigationStack {
				ThemeView()
			}
			.tabItem {
				Label(Tab.theme.title, systemImage: Tab.theme.icon)
			}
			.tag(Tab.theme)

			NavigationStack {
				SettingsView()
			}
			.tabItem {
				Label(Tab.settings.title, systemImage: Tab.settings.icon)
			}
			.tag(Tab.settings)
		}
		.tint(.white)
		.toolbarBackground(Color.black, for: .tabBar)
		.toolbarColorScheme(.dark, for: .tabBar)
	}
}

#Preview {
	BottomNavigationView()
}
