//
//  ContentView.swift
//  Fructus
//
//  Created by Namrata BizBrolly on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    @State private var destination = [Fruit]()
    // MARK: - BODY
    
    var body: some View {
        
        NavigationStack(path: $destination) {
            List {
                ForEach(fruits.shuffled()) { item in
                    //                              NavigationLink(destination: FruitDetailView(fruit: item)) {
                    //                                FruitRowView(fruit: item)
                    //                                  .padding(.vertical, 4)
                    //                              }
                    
                    NavigationLink(value: item) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            
            .navigationDestination(for: Fruit.self) { item in
                FruitDetailView(fruit: item)
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 13")
    }
}
