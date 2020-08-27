//
//  ECGScreen.swift
//  CheckHeart
//
//  Created by  Apple on 04.08.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct ECGScreen: View {
     @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        ZStack {
                Color.offWhite
                VStack () {
                    ZStack {
                        InnerRectangle ()
                        Text ("ECG")
                            .font(.custom("Nunito-Black", size: 31))
                            .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    }
                    Image ("ppgFaux").padding(.top, 20)
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
                                
                                Image ("ecg")
                                .resizable()
                                .frame(width:50, height:50)
                                .padding(.top, 8)
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
                        
                        
                        
                        .padding(.bottom, -90)
                        .frame(width:390, height:390)
                        .frame(height:50)
                }.padding(.top, 70)
            }.edgesIgnoringSafeArea(.all)
        }    
}

struct ECGScreen_Previews: PreviewProvider {
    static var previews: some View {
        ECGScreen(viewRouter: ViewRouter())
    }
}
