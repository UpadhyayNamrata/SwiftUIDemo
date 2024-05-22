//
//  SettingView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 16/05/24.
//

import SwiftUI

struct SettingView: View {
    
    private let alernateAppIcons: [String] = [
        "appiconimage-1",
        "appiconimage-2",
        "appiconimage-3",
        "appiconimage-4"
    ]
    private let alernateAppIcons1: [String] = [
        "image-1",
        "image-2",
        "image-3",
        "image-4"
    ]
    var body: some View {
        List{
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Hike")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                        .font(.system(size: 80, weight: .black))
                    
                    
                    Spacer()
                }
                .padding(.top, 8)
                VStack(spacing: 8){
                    Text("Hike")
                        .fontWeight(.medium)
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("Hike")
                        .font(.footnote)
                        .italic()
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("Alernate Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 12){
                        ForEach(alernateAppIcons.indices, id: \.self){ item in
                            Button{
                                UIApplication.shared.setAlternateIconName(alernateAppIcons[item]){ error in
                                    if error != nil{
                                        print("Failed request to App icon : \(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Success! You have changed the app's icon to \(alernateAppIcons[item])")
                                    }
                                }
                            }label: {
                                Image("\(alernateAppIcons1[item])")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                }
                }
                .padding(.top, 12)
                Text("Choose your favourite app icon from the collection above")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            Section(
                header : Text("About the App"),
                footer: HStack{
                    Spacer()
                    Text("Copyright @All right reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            ){
                CustomListRoeView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRoeView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRoeView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRoeView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRoeView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRoeView(rowLabel: "Designer", rowIcon: "painpalette", rowTintColor: .pink, rowLinkLabel: "Academy", rowLinkDestination: "https://credo.academy"
                )
//                    LabeledContent("Application", value: "Hike")
//                    LabeledContent{
//                        Text("Hike")
//                            .foregroundColor(.primary)
//                            .fontWeight(.heavy)
//                    }label: {
//                        HStack{
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 8)
//                                    .frame(width: 30, height: 30)
//                                    .foregroundColor(.blue)
//                                Image(systemName: "apps.iphone")
//                                    .foregroundColor(.white)
//                                    .fontWeight(.semibold)
//                            }
//                            Text("Application")
//                        }
//                    }
                }
            }
                   
        }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
