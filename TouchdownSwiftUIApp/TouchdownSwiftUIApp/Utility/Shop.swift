//
//  Shop.swift
//  TouchdownSwiftUIApp
//
//  Created by Namrata BizBrolly on 04/07/24.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
