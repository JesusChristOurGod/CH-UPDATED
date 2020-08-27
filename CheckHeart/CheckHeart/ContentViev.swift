//
//  ContentViev.swift
//  CheckHeart
//
//  Created by  Apple on 28.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import SwiftUI
extension Color {
    static let offWhite = Color(red: 234/255, green: 235/255, blue: 243)
    static let shadowBlack = Color(red: 70/255, green: 70/255, blue: 70/255)
    static let textColor = Color(red: 250/255, green: 116/255, blue: 101/255)
    static let textShadow = Color (red: 0/255, green: 0/255, blue: 0/255, opacity: 0.16)
}
extension LinearGradient {
    init(_ colors: Color ...) {
        self.init(gradient:Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing )
    }
}
let wX = UIScreen.main.bounds.width/100
let wY = UIScreen.main.bounds.height/100
struct ContentViev: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentViev_Previews: PreviewProvider {
    static var previews: some View {
        ContentViev()
    }
}
