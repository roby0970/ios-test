//
//  DetailsVC.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import UIKit

class DetailsVC: UIViewController {
    
    
    public private(set) var item: Item!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    @IBOutlet weak var adView: UIView!
    @IBOutlet weak var buyItemBtn: UIButton!
    @IBOutlet weak var hideAdsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = item.image
        itemTitle.text = item.name
        itemPrice.text = String(describing: item.price)
        buyItemBtn.setTitle("Buy this for $\(item.price)", for: .normal)

        // Do any additional setup after loading the view.
    }
    func initData(forItem item: Item){
        self.item = item
    }

    
    @IBAction func buyItemPressed(_ sender: Any) {
        IAPService.instance.attemptPurchaseForItemWith(productIndex: .meal)
    }
    @IBAction func removeAdsPressed(_ sender: Any) {
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
