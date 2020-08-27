//
//  BigCircle_profile.swift
//  CheckHeart
//
//  Created by  Apple on 26.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct BigCircle_profile: View {
    var body: some View {
        ZStack {
            
            Circle()
            .fill(Color.offWhite)
            .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
            .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
            
            
            
            Circle()
            .fill (Color.offWhite)
            .frame( height: 150)
            .overlay (
                Circle()
                    .stroke(Color.shadowBlack, lineWidth:4)
                    .blur(radius:4)
                    .offset (x:2, y:2)
                    .mask (Circle().fill(LinearGradient(Color.black, Color.black))))
            
            VStack {
                HStack{
                    ZStack(alignment:.center) {
                    Circle()
                    .fill (Color.offWhite)
                        .frame(width:57, height: 57)
                    .overlay (
                        Circle()
                            .stroke(Color.shadowBlack, lineWidth:4)
                            .blur(radius:4)
                            .offset (x:2, y:2)
                            .mask (Circle().fill(LinearGradient(Color.black, Color.black))))
                        
                        Image ("history")
                        .resizable()
                        .frame(width:50, height:50)
                        .padding(.top, 8)
                    }
                    
                    Spacer().frame(width:63)
                    ZStack (alignment:.center) {
                    Circle()
                    .fill (Color.offWhite)
                    .frame(width:57, height: 57)
                    .overlay (
                        Circle()
                            .stroke(Color.shadowBlack, lineWidth:4)
                            .blur(radius:4)
                            .offset (x:2, y:2)
                            .mask (Circle().fill(LinearGradient(Color.black, Color.black))))
                    Image ("stats")
                    .resizable()
                    .frame(width:30, height:30)
                    .padding(.top, 5)
                    }
                    
                }
                HStack{
                    ZStack (alignment: .center) {
                    Circle()
                    .fill (Color.offWhite)
                        .frame(width:57, height: 57)
                    .overlay (
                        Circle()
                            .stroke(Color.shadowBlack, lineWidth:4)
                            .blur(radius:4)
                            .offset (x:2, y:2)
                            .mask (Circle().fill(LinearGradient(Color.black, Color.black))))
                        
                    Image ("back")
                        .resizable()
                        .frame(width:36, height:56)
                        .padding(.top, 8)
                        
                    }
                    
                    Spacer().frame(width:201)
                    ZStack (alignment: .center) {
                    Circle()
                    .fill (Color.offWhite)
                    .frame(width:57, height: 57)
                    .overlay (
                        Circle()
                            .stroke(Color.shadowBlack, lineWidth:4)
                            .blur(radius:4)
                            .offset (x:2, y:2)
                            .mask (Circle().fill(LinearGradient(Color.black, Color.black))))
                        Image ("profile")
                        .resizable()
                        .frame(width:48, height:56)
                        .padding(.top, 8)
                        
                        
                    }
                    
                }
                Spacer().frame(height:200)
                
                
            }
            
            }.edgesIgnoringSafeArea(.all)

    }
}

struct BigCircle_profile_Previews: PreviewProvider {
    static var previews: some View {
        BigCircle_profile()
    }
}
