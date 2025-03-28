//
//  WakeWiseApp.swift
//  WakeWise
//
//  Created by Dan Klaver on 2/12/25.
//

import SwiftUI
import SwiftData

@main
struct WakeWiseApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
					BottomNavigationView()
        }
        .modelContainer(sharedModelContainer)
    }
}
