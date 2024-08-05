//
//  ToDoSwiftUIAppApp.swift
//  ToDoSwiftUIApp
//
//  Created by Namrata BizBrolly on 24/07/24.
//

import SwiftUI

@main
struct ToDoSwiftUIAppApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var iconNames = IconNames()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(iconNames)
        }


    }
    

}

