//
//  InnerCircle.swift
//  CheckHeart
//
//  Created by  Apple on 14.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct InnerCircle: View {
    var body: some View {
        
       ZStack {
        Color.offWhite
        Circle()
        .fill (Color.offWhite)
        .overlay (
            Circle()
                .stroke(Color.shadowBlack, lineWidth:4)
                .blur(radius:4)
                .offset (x:2, y:2)
                .mask (Circle().fill(LinearGradient(Color.black, Color.clear))))
        }.edgesIgnoringSafeArea(.all)
    }
}

struct InnerCircle_Previews: PreviewProvider {
    static var previews: some View {
        InnerCircle()
    }
}
