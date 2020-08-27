//
//  Switch.swift
//  CheckHeart
//
//  Created by  Apple on 18.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI

struct Switch: View {
    var body: some View {
        ZStack {
            
            Capsule().fill(Color.textColor.opacity(0.56)).frame(width:135, height:45)
            
            Circle().fill(Color.textColor).frame(width:60)
                .padding(.leading, 80)
                .shadow(color: Color(red: 245/255, green: 154/255, blue: 154/255), radius: 3, x: -2, y: -2)
                .shadow(color: Color(red: 128/255, green: 6/255, blue: 6/255), radius: 3, x: 2, y: 2)


            
        }
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch()
    }
}
