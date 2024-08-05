//
//  HikeApp.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 09/05/24.
//

import Foundation
import SwiftUI

struct HikeAppView: View{
    var body: some View{
        ZStack {
            Rectangle().fill(.green).frame(width: 50, height: 50)
                .zIndex(1000)
            Rectangle().fill(.red).frame(width: 100, height: 100)}
        CardView()
    }
}

struct HikeAppView_Previews: PreviewProvider{
    static  var previews: some View{
        HikeAppView()
    }
}
