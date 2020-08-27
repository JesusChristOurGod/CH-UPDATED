//
//  HeartBeatScreen.swift
//  CheckHeart
//
//  Created by  Apple on 23.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct HeartBeatScreen: View {
    
    
    @State var size: CGFloat = 1.14
    
    var repeatingAnimation: Animation {
        Animation
            .easeOut(duration: 1)
            .repeatForever()
    }
      @ObservedObject var viewRouter: ViewRouter
   
    var body: some View {
    
        ZStack {
            Color.offWhite
            VStack (spacing: 35) {
                ZStack(alignment: .center) {
                    ConvexCircle()
                        .rotationEffect(.degrees(45))
                        .frame(width: 276)
                    Image ("heart")
                        .resizable()
                        .frame(width:160, height: 150)
                        .padding(.top, 20)
                        .scaleEffect(1.14)
                    .scaleEffect(size)
                        .onAppear() {
                            withAnimation(self.repeatingAnimation) { self.size = 1 }
                    }
                        
                } .padding(.top, 30)
                ZStack{
                    InnerRectangle()
                    Text("Your heartbeat is:")
                        .font(.custom("Nunito-Black", size: 31))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                }
                ZStack {
                    ConvexCapsule()
                    Text ("91 BPM")
                        .font(.custom("Nunito-Black", size: 70))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                }
                Spacer().frame(height:190)
                
                    
                    
                    
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
                                Image ("ppg").renderingMode(.original)
                            .resizable()
                            .frame(width:54, height:60)
                            .padding(.top, 8)
                            }
                            }
                            
                        }
                        HStack{
                           Button(action: {self.viewRouter.currentPage = "page2"}) {
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
                                
                            Image ("settings")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:56, height:56)
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
                    
                .padding(.bottom, 0)
                .frame(width:390, height:390)
                .frame(height:50)
                
                
            }.padding(.top, 70)
        }.edgesIgnoringSafeArea(.all)
            
        
    }
}

struct HeartBeatScreen_Previews: PreviewProvider {
    static var previews: some View {
        HeartBeatScreen(viewRouter: ViewRouter())
    }
}





