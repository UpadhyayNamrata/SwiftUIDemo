//
//  FruitModel.swift
//  Fructus
//
//  Created by Namrata BizBrolly on 14/06/24.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable, Hashable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String] 
}
