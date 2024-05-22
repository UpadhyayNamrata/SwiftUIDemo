//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 09/05/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet:Bool = false
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack{
            CustomBackgroundView()
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [Color("ColorGrayLight"),Color("ColorGrayMedium") ], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        
                        Button{
                            print("The button was pressed.")
                            isShowingSheet.toggle()
                        }label: {
                           CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Hello Everyone")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(Color("ColorGrayMedium"))
                }.padding(.horizontal,30)
            
            ZStack{
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
//                    )
//                    .frame(width: 256, height: 256)
                CustomCircleView()
                
                Image("image-\(imageNumber)")
                    .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
            }
                Button{
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorGreenMedium")], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
        }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
