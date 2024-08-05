//
//  ButtonModifier.swift
//  HoneymoonSwiftUIApp
//
//  Created by Namrata BizBrolly on 26/07/24.
//


import SwiftUI

struct ButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .padding()
      .frame(minWidth: 0, maxWidth: .infinity)
      .background(Capsule().fill(Color.pink))
      .foregroundColor(Color.white)
  }
}
