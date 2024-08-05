//
//  ContentView.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 03/07/24.
//

import SwiftUI

//UIApplication.shared.windows.first?.safeAreaInsets.top


struct ContentView: View {
    @State var topSize: CGFloat = 0
    @EnvironmentObject var shop: Shop
   
    
    var body: some View {
        ZStack {
            if self.shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, topSize)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.4)
                                .padding(.vertical, 20)
                           
                                CategoryGridView()
                           
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            }) //: GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }// : VStack
                    })// : Scroll
                    
                } //:VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                .onAppear() {
                    calculateSpace()
                }
            }else{
               ProductDetailView()
            }
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
        
    
    func calculateSpace(){
        if let window =  UIApplication.shared.connectedScenes.first as? UIWindowScene{
            topSize = window.windows.first?.safeAreaInsets.top ?? 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        .previewDevice("iPhone 12 Pro")
    }
}
