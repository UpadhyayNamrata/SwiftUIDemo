//
//  BackgroundImageView.swift
//  DevoteSwiftUI
//
//  Created by Namrata BizBrolly on 16/07/24.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("rocket-small")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
