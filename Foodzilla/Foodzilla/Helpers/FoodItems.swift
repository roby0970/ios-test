//
//  FoodItems.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import UIKit
let defaultPrice = 9.99
let salmon = Item(image: UIImage(named: "food1.png")!, name: "Salmon", price: defaultPrice)
let cheeseburger = Item(image: UIImage(named: "food2.png")!, name: "Cheebur", price: defaultPrice)
let burrito = Item(image: UIImage(named: "food3.png")!, name: "Burittt", price: defaultPrice)
let spaghetti = Item(image: UIImage(named: "food4.png")!, name: "Spaheit", price: defaultPrice)
let pizza = Item(image: UIImage(named: "food5.png")!, name: "Piyyyya", price: defaultPrice)
let salad = Item(image: UIImage(named: "food6.png")!, name: "Salad", price: defaultPrice)

let foodItems: [Item] = [salmon, cheeseburger, burrito, spaghetti, pizza, salad]
