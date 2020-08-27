//
//  history.swift
//  CheckHeart
//
//  Created by  Apple on 22.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct history: View {
   @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        ZStack {
            Color.offWhite
        VStack {
           
            ZStack {
            InnerRectangle()
                Text ("Medical history")
                .font(.custom("Nunito-Black", size: 31))
                .foregroundColor(Color.textColor)
                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
            }
            
            
            ScrollView (.vertical, showsIndicators: false) {
            ZStack {
            Main_Rectangle()
                Text ("Add new diagnosis")
                .font(.custom("Nunito-Black", size: 31))
                .foregroundColor(Color.textColor)
                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                
            }.padding(.top, 40)
            
            
            ZStack {
            Main_Rectangle()
                VStack (alignment: .leading) {
                    Text ("4 years ago")
                    .font(.custom("Nunito-Black", size: 20))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                    
                    Text ("Myaocardical infarction")
                    .font(.custom("Nunito-Black", size: 20))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                    
                }.padding(.trailing, 50)
            }.padding(.leading, 100).padding(.top, 40)
            
            
            ZStack {
            Main_Rectangle()
                VStack (alignment: .trailing) {
                    Text ("21 June")
                    .font(.custom("Nunito-Black", size: 20))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                    
                    Text ("Pulse is too high")
                    .font(.custom("Nunito-Black", size: 20))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                    
                }.padding(.leading, 80)
            }.padding(.trailing, 100).padding(.top, 40)
                
                ZStack {
                           Main_Rectangle()
                               VStack (alignment: .leading) {
                                   Text ("23 June")
                                   .font(.custom("Nunito-Black", size: 20))
                                   .foregroundColor(Color.textColor)
                                   .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                                   
                                   
                                   Text ("Bad ECG")
                                   .font(.custom("Nunito-Black", size: 20))
                                   .foregroundColor(Color.textColor)
                                   .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                                   
                                   
                                }.padding(.trailing, 190)
                }.padding(.leading, 100).padding(.top, 40)
                
                
                ZStack {
                Main_Rectangle()
                    VStack (alignment: .trailing) {
                        Text ("1 July")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        
                        
                        Text ("Bad ECG")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        
                        
                    }.padding(.leading, 170)
                }.padding(.trailing, 100).padding(.top, 40)
                
                ZStack {
                        Main_Rectangle()
                        VStack (alignment: .leading) {
                            Text ("2 July")
                                .font(.custom("Nunito-Black", size: 20))
                                .foregroundColor(Color.textColor)
                                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                                                  
                                                  
                            Text ("Pulse is too high")
                                .font(.custom("Nunito-Black", size: 20))
                                .foregroundColor(Color.textColor)
                                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                                                  
                                                  
                        }.padding(.trailing, 110)
                }.padding(.leading, 100).padding(.top, 40)
                
                
                
                
            }.frame(height:450)
            Spacer()
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
                                 Button(action: {self.viewRouter.currentPage = "page1"}) {
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
                                    .renderingMode(.original)
                                       .resizable()
                                       .frame(width:36, height:56)
                                       .padding(.top, 8)
                                       
                                   }
                                }
                                   
                                   Spacer().frame(width:201)
                                 Button(action: {self.viewRouter.currentPage = "page3"}) {
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
                                        .renderingMode(.original)
                                       .resizable()
                                       .frame(width:48, height:56)
                                       .padding(.top, 8)
                                       
                                       
                                   }
                                }
                                   
                               }
                               Spacer().frame(height:200)
                               
                               
                           }
                           
                           }.edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -95)
                .frame(width:390, height:390)
                .frame(height:50)
            
            
            
            
            
            
        }.padding (.top, 70)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct history_Previews: PreviewProvider {
    static var previews: some View {
        history(viewRouter: ViewRouter())
    }
}
