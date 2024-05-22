//
//  GradientButton.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 10/05/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [Color("ColorGrayLight"), Color("ColorGrayMedium")], startPoint: .top, endPoint: .bottom)
                :
                    LinearGradient(colors: [Color("ColorGrayMedium"), Color("ColorGrayLight")], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
