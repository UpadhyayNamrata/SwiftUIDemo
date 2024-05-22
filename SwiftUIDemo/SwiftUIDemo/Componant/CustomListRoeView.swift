//
//  CustomListRoeView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 16/05/24.
//

import SwiftUI

struct CustomListRoeView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    
    var body: some View {
        LabeledContent{
            if rowContent != nil{
                Text(rowContent ?? "")
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (rowLinkLabel != nil && rowLinkDestination != nil){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            }else{
                EmptyView()
            }
        }label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRoeView_Previews: PreviewProvider {
    static var previews: some View {
        List{
            CustomListRoeView(rowLabel: "Designer", rowIcon: "painpalette", rowContent: "John Doe", rowTintColor: .pink, rowLinkLabel: "Academy", rowLinkDestination: "https://credo.academy"
            )
            }
    }
}
