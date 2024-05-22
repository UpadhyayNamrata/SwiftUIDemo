//
//  GoToLinkView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 12/04/24.
//

import SwiftUI

struct GoToLinkView: View {
   
    var body: some View {
        Link(destination: URL(string: "https://apple.com")!){
            HStack(spacing: 16){
                Image(systemName: "apple.logo")
                Text("Apple Store")
            }
//            .buttonStyle(.bordered)
//            .buttonBorderShape(.roundedRectangle)
//            .controlSize(.regular)
//            .tint(.blue)
            .font(.largeTitle)
//            .foregroundColor(.teal)
//            .foregroundStyle(.teal.gradient)
            .foregroundStyle(LinearGradient(colors: [.pink, .purple, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
            .padding()
            .padding(.horizontal)
            .background(
            Capsule()
                .fill(Color.blue)
            )
        }
    }
    
    struct GoToLinkView_Previews: PreviewProvider {
        static var previews: some View {
            GoToLinkView()
        }
    }

}
