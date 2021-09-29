//
//  ItemCell.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var itemPiceLbl: UILabel!
    
    func configureCell(item: Item) {
        itemNameLbl.text = item.name
        itemPiceLbl.text = String(describing: item.price)
        itemImageView.image = item.image
    }
}
