//
//  ConvexCircle.swift
//  CheckHeart
//
//  Created by  Apple on 14.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct ConvexCircle: View {
    var body: some View {
        ZStack {
               Color.offWhite
               Circle()
               .fill(Color.offWhite)
               .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
               .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
               }.edgesIgnoringSafeArea(.all)
           }
    }


struct ConvexCircle_Previews: PreviewProvider {
    static var previews: some View {
        ConvexCircle()
    }
}
