//
//  StatisticScreen.swift
//  CheckHeart
//
//  Created by  Apple on 04.08.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct StatisticScreen: View {
    @State private var time1 = Date()
   @State var  ecgPick = 0

    var body: some View {
        ZStack {
            Color.offWhite
            VStack {
                ZStack {
                    InnerRectangle()
                    Text ("Stats")
                        .font(.custom("Nunito-Black", size: 31))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    
                }
                ScrollView {
                    VStack {
                    ZStack {
                         InnerRectangleSmall()
                        Text ("Pulse")
                        .font(.custom("Nunito-Black", size: 24))
                        .foregroundColor(Color.textColor)
                        .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                    }
                    Image("pulseStats")
                    }
                    VStack {
                        ZStack {
                             InnerRectangleSmall()
                            Text ("PPG")
                            .font(.custom("Nunito-Black", size: 24))
                            .foregroundColor(Color.textColor)
                            .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        }
                        Image("graph1")
                        ZStack {
                            InnerRectangleBig()
                            DatePicker ("", selection: $time1, displayedComponents: .hourAndMinute)
                                .foregroundColor(Color.textColor)
                            .labelsHidden()
                            
                        }
                        
                    }
                    VStack {
                        ZStack {
                            InnerRectangleSmall()
                            Text ("ECG")
                                .font(.custom("Nunito-Black", size: 24))
                                .foregroundColor(Color.textColor)
                                .shadow(color: Color.textShadow, radius: 3, x: 0, y: 3)
                        }
                        Image("graph2")
                        HStack (spacing:43) {
                            Button (action: {self.ecgPick = 1}  ) {
                            ZStack {
                                InnerCircle().frame(width:37, height: 37)
                                Circle().frame(width:25, height:25).foregroundColor(Color.textColor).shadow(color: Color.textColor.opacity(0.7), radius: 8)
                                if ecgPick == 1 {
                                    .opacity = 100
                                }
                                
                            }
                            }
                            Button (action: {self.ecgPick = 2}  ) {
                            ZStack {
                                InnerCircle().frame(width:37, height: 37)
                                Circle().frame(width:25, height:25).foregroundColor(Color.textColor).shadow(color: Color.textColor.opacity(0.7), radius: 8)
                                
                            }
                            }
                        }
                    }
                   
                }.frame(height:638)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct StatisticScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatisticScreen()
    }
}
