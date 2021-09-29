//
//  ViewController.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import UIKit

class StorefrontVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ItemCell  else {
            return UICollectionViewCell()
        }
        
        cell.configureCell(item: foodItems[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailsVC else { return }
        detailVC.initData(forItem: foodItems[indexPath.row ])
        present(detailVC, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource  = self
        IAPService.instance.delegate = self
        IAPService.instance.loadProducts()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var collectionView: UICollectionView!

    
    @IBAction func questionBtnPressed(_ sender: Any) {
    }
}


extension StorefrontVC: IAPServiceDelegate  {
    func iapProductsLoaded() {
        print("IAP Products loaded")
    }
    
    
}

