//
//  Item.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import UIKit

class Item {
    private(set) public var image: UIImage
    private(set) public var name: String
    private(set) public var price: Double
    
    init(image: UIImage, name: String, price: Double) {
        self.image = image
        self.name = name
        self.price = price
    }
}
