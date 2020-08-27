//
//  Main Rectangle.swift
//  CheckHeart
//
//  Created by  Apple on 14.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct Main_Rectangle: View {
    var body: some View {
       RoundedRectangle (cornerRadius: 18)
        .fill(Color.offWhite)
        .frame(width: 337, height: 75)
        .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
        
    }
}

struct Main_Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Main_Rectangle()
    }
}
