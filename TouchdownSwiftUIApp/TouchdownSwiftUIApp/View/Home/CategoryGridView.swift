//
//  CategoryGridView.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 05/07/24.
//

import SwiftUI

struct CategoryGridView: View {
  // MARK: - PROPERTY
    @StateObject var categoryVM = CategoryVM()
   
  // MARK: - BODY
  
  var body: some View {
      ZStack(alignment: .center){
          if categoryVM.isLoading{
              ProgressView()
//                  .scaleEffect(8)
                  .progressViewStyle(.automatic)
          }else{
              ScrollView(.horizontal, showsIndicators: false, content: {
                  
                  
                  LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                      
                      Section(
                        header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                      ) {
                          ForEach(categoryVM.categoryArray) { category in
                              CategoryItemView(category: category)
                          }
                      }
                  }) //: GRID
                  .frame(height: 140)
                  .padding(.horizontal, 15)
                  .padding(.vertical, 10)
                  
              })
              //: SCROLL
          }
      }
      .task {
        categoryVM.getCategory()
    }
  }
}

// MARK: - PREVIEW

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
