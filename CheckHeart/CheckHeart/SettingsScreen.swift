//
//  SettingsScreen.swift
//  CheckHeart
//
//  Created by  Apple on 15.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
        Color.offWhite
            
            VStack() {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                .fill (Color.offWhite)
                .frame(width: 337, height: 75)
                        
                        
                .overlay (
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.shadowBlack, lineWidth:4)
                        .frame(width: 337, height: 75)
                        .blur(radius:4)
                    .mask (RoundedRectangle(cornerRadius: 16).fill(LinearGradient(Color.black, Color.gray))))

                            Text ("Settings")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        
                    
                     

                }
                .padding(.top, -70)
                
                
                ZStack {
                    RoundedRectangle (cornerRadius: 18)
                    .fill(Color.offWhite)
                    .frame(width: 337, height: 75)
                    .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
                    HStack {
                    Text ("Animations")
                    .font(.custom("Nunito-Black", size: 26))
                    .foregroundColor(Color.textColor)
                    .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        
                    
                    
                    ZStack {
                        
                        Capsule().fill(Color.textColor.opacity(0.56)).frame(width:45, height:21)
                        
                        Circle().fill(Color.textColor).frame(width:25)
                            .padding(.leading, 55)
                            .shadow(color: Color(red: 245/255, green: 154/255, blue: 154/255), radius: 3, x: -2, y: -2)
                            .shadow(color: Color(red: 128/255, green: 6/255, blue: 6/255), radius: 3, x: 2, y: 2)
                    }
                    .padding(.trailing, -40)
                    .frame( height: 30)
                    }
                    .padding(.trailing, 70)
                    
                }
                    .padding(.top, 40)
                    .padding(.leading, 100)
                
                
                
                
                
                ZStack {
                    RoundedRectangle (cornerRadius: 18)
                    .fill(Color.offWhite)
                    .frame(width: 337, height: 75)
                    .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
                    HStack {
                    
                    
                    
                    ZStack {
                        
                        Capsule().fill(Color.textColor.opacity(0.56)).frame(width:45, height:21)
                        
                        Circle().fill(Color.textColor).frame(width:25)
                            .padding(.leading, 55)
                            .shadow(color: Color(red: 245/255, green: 154/255, blue: 154/255), radius: 3, x: -2, y: -2)
                            .shadow(color: Color(red: 128/255, green: 6/255, blue: 6/255), radius: 3, x: 2, y: 2)
                    }
                    .padding(.leading, 40)
                    .frame( height: 30)
                        Spacer()
                        Text ("Save data")
                        .font(.custom("Nunito-Black", size: 26))
                        .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        .padding(.trailing,-25)
                        
                        
                        
                        
                    }
                    .padding(.trailing, 70)
                    
                }
                    .padding(.top, 40)
                    .padding(.trailing, 100)
             
                ZStack {
                    RoundedRectangle (cornerRadius: 42)
                    .fill(Color.offWhite)
                    .frame(width: 318, height: 176)
                    .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
                    VStack {
                        Text ("Download all ")
                                           .font(.custom("Nunito-Black", size: 40))
                                           .foregroundColor(Color.textColor)
                                           .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        Text ("data ")
                        .font(.custom("Nunito-Black", size: 40))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                            
                        
                    }
                    
                }
                .padding(.top, 40)
                    
                
               
                    
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
                         Button(action: {self.viewRouter.currentPage = "page6"}) {
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
                            
                            Image ("ecg")
                                .renderingMode(.original)
                            .resizable()
                            .frame(width:50, height:50)
                            .padding(.top, 8)
                        }
                        }
                        
                        Spacer().frame(width:63)
                        Button(action: {self.viewRouter.currentPage = "page5"}) {
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
                        Image ("ppg")
                            .renderingMode(.original)
                        .resizable()
                        .frame(width:54, height:60)
                        .padding(.top, 8)
                        }
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
                    
                    
                    
                    .padding(.bottom, -375)
                    .frame(width:390, height:390)
                    .frame(height:50)
                
                    
                    
            }
            
        
        }.edgesIgnoringSafeArea(.all)
        
        
    }
    
    
    
    }


struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen(viewRouter: ViewRouter())
    }
}




