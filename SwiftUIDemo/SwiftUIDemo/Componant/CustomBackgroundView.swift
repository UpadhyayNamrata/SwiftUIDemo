//
//  CustomBackgroundView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 09/05/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom)
            
                .cornerRadius(40)
            
            
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
    }
}
