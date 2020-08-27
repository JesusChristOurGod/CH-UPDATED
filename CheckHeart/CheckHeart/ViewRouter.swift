//
//  ViewRouter.swift
//  CheckHeart
//
//  Created by  Apple on 28.07.2020.
//  Copyright © 2020  Apple. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "page1" {
        didSet {
            objectWillChange.send(self)
        }
    }
}
