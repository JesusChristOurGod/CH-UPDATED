//
//  ProfileScreen.swift
//  CheckHeart
//
//  Created by  Apple on 23.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct ProfileScreen: View {
     @ObservedObject var viewRouter: ViewRouter

    var body: some View {
        ZStack {
            Color.offWhite
            VStack (spacing:40) {
                ZStack {
                    InnerRectangle()
                    Text ("My profile")
                    .font(.custom("Nunito-Black", size: 31))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                }
                
                
                ZStack {
                Main_Rectangle()
                    VStack (alignment: .trailing, spacing: 2) {
                        Text ("My age is:")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            .padding(.bottom, -10)
                        
                        
                        HStack {
                            Image ("edit")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.top, 10)
                            Text ("33 years")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        }.padding(.bottom)
                    
                        
                        
                    }.padding(.leading, 80).padding(.bottom, -20)
                }.padding(.trailing, 100)
                
                
                ZStack {
                Main_Rectangle()
                    VStack (alignment: .leading, spacing: 2) {
                        Text ("My sex is:")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            .padding(.bottom, -10)
                        
                        
                        HStack {
                            
                            Text ("Woman")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            Image ("reversedEdit")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .padding(.top, 10)
                            
                        }.padding(.bottom)
                    
                        
                        
                    }.padding(.trailing, 80).padding(.bottom, -20)
                }.padding(.leading, 100)
                
                ZStack {
                Main_Rectangle()
                    VStack (alignment: .trailing, spacing: 2) {
                        Text ("My height is:")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            .padding(.bottom, -10)
                        
                        
                        HStack {
                            Image ("edit")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.top, 10)
                            Text ("180 cm")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        }.padding(.bottom)
                    
                        
                        
                    }.padding(.leading, 80).padding(.bottom, -20)
                }.padding(.trailing, 100)
                
                ZStack {
                Main_Rectangle()
                    VStack (alignment: .leading, spacing: 2) {
                        Text ("My weight is:")
                        .font(.custom("Nunito-Black", size: 20))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            .padding(.bottom, -10)
                        
                        
                        HStack {
                            
                            Text ("70 kg")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            Image ("reversedEdit")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .padding(.top, 10)
                            
                        }.padding(.bottom)
                    
                        
                        
                    }.padding(.trailing, 80).padding(.bottom, -20)
                }.padding(.leading, 100)
                
                
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
                            Button(action: {self.viewRouter.currentPage = "page4"}) {
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
                                .renderingMode(.original)
                                
                            .resizable()
                            .frame(width:50, height:50)
                            .padding(.top, 8)
                        }
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
                    Spacer().frame(height:200)
                    
                    
                }
                
                }.edgesIgnoringSafeArea(.all)
                        
                .padding(.bottom, -95)
                .frame(width:390, height:390)
                .frame(height:50)
                
                
                
                
            }.padding(.top, 70)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen(viewRouter: ViewRouter())
    }
}
