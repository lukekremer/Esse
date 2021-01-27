//
//  EsseApp.swift
//  Esse
//
//  Created by Luke Kremer on 1/2/21.
//

import SwiftUI

@main
struct EsseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
