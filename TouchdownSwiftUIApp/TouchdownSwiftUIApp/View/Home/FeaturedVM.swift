//
//  FeaturedVM.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 09/07/24.
//

import SwiftUI


class FeaturedVM: ObservableObject{
    @Published var featuredArray: [Player] = []
    func getFeaturedPlayer(){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            let players: [Player] = Bundle.main.decode("player.json")
            self.featuredArray = players
        }
    }
    
}

class CategoryVM: ObservableObject{
    @Published var categoryArray: [Category] = []
    @Published var isLoading = true
    func getCategory(){
        DispatchQueue.main.asyncAfter(deadline: .now()+10){
            print("Loading Featured player=========")
            let categories: [Category] = Bundle.main.decode("category.json")
            self.categoryArray = categories
            self.isLoading = false
        }
    }
    
}
