//
//  BaladinApp.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//

import SwiftUI
import CoreData

@main
struct BaladinApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
