//
//  RemoteImageView.swift
//  SwiftUIDemo
//
//  Created by Namrata BizBrolly on 25/04/24.
//

import Foundation
import SwiftUI

extension Image{
    func imageModifier() -> some View{
       self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View{
        self
            .imageModifier()
            .frame(maxWidth:128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct RemoteImageView: View{
    private let imageUrl : String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View{
        //AsyncImage(url: URL(string:imageUrl))
        AsyncImage(url: URL(string: imageUrl), scale:2.0)
        AsyncImage(url: URL(string: imageUrl)){ image in
            image.imageModifier()
        } placeholder:{
            Image(systemName: "").iconModifier()
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: 128)
//                .foregroundColor(.purple)
//                .opacity(0.5)
        }
        //Phase
        AsyncImage(url: URL(string: imageUrl)){ phase in
                //success
            //falure
            //empty
            if let image = phase.image{
                image.imageModifier()
            }else if phase.error != nil{
                Image(systemName: "").iconModifier()
            }else{
                Image(systemName: "").iconModifier()
            }
        }
        
        //Animation
        AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation:.spring(response: 0.5, dampingFraction:0.6, blendDuration: 0.25))){ phase in
            switch phase{
            case .success(let image):
                image.imageModifier()
                  //  .transition(.move(edge: .bottom))
                    .transition(.slide)
            case .empty:
                Image(systemName: "").iconModifier()
            case .failure(_):
                Image(systemName: "").iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
        
        
        
    }
}

struct RemoteImageView_Previews: PreviewProvider{
    static var previews: some View{
        RemoteImageView()
    }
}
