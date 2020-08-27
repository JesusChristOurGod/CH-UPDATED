//
//  ConvexCapsule.swift
//  CheckHeart
//
//  Created by  Apple on 23.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct ConvexCapsule: View {
    var body: some View {
        Capsule()
            .foregroundColor(Color.offWhite)
            .frame(width: 318, height:91)
            .shadow(color: Color.shadowBlack.opacity(0.7), radius: 5, x: 6, y: 6)
            .shadow(color: Color.white.opacity(0.7), radius: 5, x: -6, y: -6)
    }
}

struct ConvexCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ConvexCapsule()
    }
}
