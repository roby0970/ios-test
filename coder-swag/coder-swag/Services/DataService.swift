//
//  DataService.swift
//  coder-swag
//
//  Created by FOI on 13.09.2021..
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Hat oooooo2", price: "$22", imageName: "hat02.png"),
        Product(title: "Ooooooo3 Hat", price: "$14", imageName: "hat03.png"),
        Product(title: "Hat04.png", price: "$18", imageName: "hat04.png")
        
    ]
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie", price: "$45", imageName: "hoodie01.png"),
        Product(title: "Hoodie oooooo2", price: "$47", imageName: "hoodie02.png"),
        Product(title: "Ooooooo3 Hoodie", price: "$56", imageName: "hoodie03.png"),
        Product(title: "Hoodie04.png", price: "$38", imageName: "hoodie04.png")
        
    ]
    private let shirts = [
        Product(title: "Devslopes Logo shirts", price: "$18", imageName: "shirt01.png"),
        Product(title: "shirt oooooo2", price: "$22", imageName: "shirt02.png"),
        Product(title: "Ooooooo3 shirts", price: "$14", imageName: "shirt03.png"),
        Product(title: "shirt04.png", price: "$18", imageName: "shirt04.png"),
        Product(title: "Last ojne", price: "$101", imageName: "shirt05.png")
        
    ]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digital
    }
}
