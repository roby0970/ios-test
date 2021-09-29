//
//  BorderButton.swift
//  ios-swoosh
//
//  Created by FOI on 10.09.2021..
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }
    
}
