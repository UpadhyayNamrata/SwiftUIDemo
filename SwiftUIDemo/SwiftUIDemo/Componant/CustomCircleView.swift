//
//  CustomCircleView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 10/05/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack{
        Circle()
            .fill(
                LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorGreenMedium")], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
            )
            .onAppear{
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimateGradient.toggle()
                }
            }
            MotionAnimationView()
    }
            .frame(width: 256, height: 256)
    
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
