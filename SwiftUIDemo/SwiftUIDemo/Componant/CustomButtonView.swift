//
//  CustomButtonView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 09/05/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(.purple)
            Circle()
                .stroke(
                    LinearGradient(colors: [Color("ColorGrayLight"),Color("ColorGrayMedium") ], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            
            Image(systemName: "figure.hiring")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle( LinearGradient(colors: [Color("ColorGrayLight"),Color("ColorGrayMedium") ], startPoint: .top, endPoint: .bottom)
                )
        }
        .frame(width:40, height: 40)
    }
       
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
