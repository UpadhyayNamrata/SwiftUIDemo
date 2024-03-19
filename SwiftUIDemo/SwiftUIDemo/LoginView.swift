//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 09/05/23.
//

import SwiftUI

struct LoginView: View {
    let name: String

    var body: some View {
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(name: "Music Player")
    }
}


