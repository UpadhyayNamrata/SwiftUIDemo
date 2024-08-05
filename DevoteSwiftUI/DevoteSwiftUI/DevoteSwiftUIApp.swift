//
//  DevoteSwiftUIApp.swift
//  DevoteSwiftUI
//
//  Created by Namrata BizBrolly on 15/07/24.
//

import SwiftUI

@main
struct DevoteSwiftUIApp: App {
    let persistenceController = PersistenceController.shared
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
