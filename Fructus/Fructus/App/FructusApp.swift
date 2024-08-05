//
//  FructusApp.swift
//  Fructus
//
//  Created by Namrata BizBrolly on 14/06/24.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
