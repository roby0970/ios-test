//
//  UIButtonExt.swift
//  goalpost-app
//
//  Created by FOI on 13.09.2021..
//

import UIKit

extension UIButton {
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.7803921569, blue: 0.2578922194, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6945143938, green: 0.6945143938, blue: 0.6945143938, alpha: 1)
    }
}
