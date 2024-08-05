//
//  TitleModifier.swift
//  HoneymoonSwiftUIApp
//
//  Created by Namrata BizBrolly on 26/07/24.
//


import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(Color.pink)
  }
}
