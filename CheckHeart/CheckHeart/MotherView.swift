//
//  MotherView.swift
//  CheckHeart
//
//  Created by  Apple on 28.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        
        VStack {
            if viewRouter.currentPage == "page1" {
                HeartBeatScreen(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page2" {
                SettingsScreen(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page3" {
                ProfileScreen(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page4" {
                history(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page5" {
                PPGScreen(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "page6" {
                ECGScreen (viewRouter:viewRouter)
            }
        }
        
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
