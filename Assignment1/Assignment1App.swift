//
//  Assignment1App.swift
//  Assignment1
//
//  Created by ramy on 2022-02-23.
//

import SwiftUI

@main
struct Assignment1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
