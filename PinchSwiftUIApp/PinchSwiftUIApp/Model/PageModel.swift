//
//  PinchSwiftUIApp
//
//  Created by Namrata BizBrolly on 11/06/24.
//

import Foundation 

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
