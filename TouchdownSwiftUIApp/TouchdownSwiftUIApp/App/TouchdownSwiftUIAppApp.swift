//
//  TouchdownSwiftUIAppApp.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 03/07/24.
//

import SwiftUI

@main
struct TouchdownSwiftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
