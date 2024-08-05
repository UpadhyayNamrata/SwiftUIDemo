//
//  FactModel.swift
//  AvocadosSwiftUIApp
//
//  Created by Namrata BizBrolly on 26/07/24.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String 
}
