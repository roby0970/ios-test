//
//  ViewController.swift
//  daily-dose
//
//  Created by FOI on 15.09.2021..
//

import UIKit
import GoogleMobileAds
class HomeVC: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupAds()
        
        
        
    }
    func setupAds() {
        if !UserDefaults.standard.bool(forKey: PurchaseManager.instance.IAP_REMOVE_ADS) {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        }
        else {
            removeAdsBtn.removeFromSuperview()
            bannerView.removeFromSuperview()
        }
    }

    @IBOutlet weak var removeAdsBtn: UIButton!
    
    @IBAction func restoreBtnPressed(_ sender: Any) {
        PurchaseManager.instance.restorePurchases { success in
            if success {
                self.setupAds()
            }else {
                // show msg
            }
        }
    }
    @IBAction func removeAdsPressed(_ sender: Any) {
        // ActivityIndicator
        PurchaseManager.instance.purchaseRemoveAds { success in
            //dismiss spinner
            
            if success {
                self.removeAdsBtn.removeFromSuperview()
                self.bannerView.removeFromSuperview()
            }else {
                // show msg
            }
            
        }
    }
}

