//
//  CenterModifier.swift
//  AfricaSwiftUI
//
//  Created by Namrata BizBrolly on 17/06/24.
//


import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
