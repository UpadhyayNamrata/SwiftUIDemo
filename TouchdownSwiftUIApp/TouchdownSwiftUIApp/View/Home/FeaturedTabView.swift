//
//  FeaturedTabView.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 05/07/24.
//

import SwiftUI

struct FeaturedTabView: View {
@StateObject var featuredVM = FeaturedVM()
  var body: some View {
    TabView {
        ForEach(featuredVM.featuredArray) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    .task {
        featuredVM.getFeaturedPlayer()
    }
  }
}

struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .previewDevice("iPhone 12 Pro")
      .background(Color.gray)
  }
}
