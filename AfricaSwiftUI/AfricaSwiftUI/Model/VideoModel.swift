//
//  VideoModel.swift
//  AfricaSwiftUI
//
//  Created by Namrata BizBrolly on 17/06/24.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
