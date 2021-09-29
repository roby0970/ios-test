//
//  IAPService.swift
//  Foodzilla
//
//  Created by FOI on 15.09.2021..
//

import Foundation
import StoreKit


protocol IAPServiceDelegate {
    func iapProductsLoaded()
}
class IAPService: NSObject, SKProductsRequestDelegate {
    
    static let instance = IAPService()
    
    var delegate: IAPServiceDelegate?
    
    var products = [SKProduct]()
    var productIds = Set<String>()
    var productRequest = SKProductsRequest()
    
    
    override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    func loadProducts() {
        print("AAAA")
        productIdToStringSet()
        requestProducts(forIds: productIds)
    }
    
    func productIdToStringSet() {
        productIds.insert(IAP_MEAL_ID)
    }
    
    func requestProducts(forIds ids: Set<String>) {
        productRequest.cancel()
        productRequest = SKProductsRequest(productIdentifiers: ids)
        productRequest.delegate = self
        
        print("ASDsd")
        productRequest.start()
        print("gimme some")
    }
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print("gimme some")
        self.products = response.products
        
        if products.count == 0 {
            print("gimme some1")
            requestProducts(forIds: productIds)
        } else {
            
            delegate?.iapProductsLoaded()
            print(products[0].localizedTitle)
        }
    }
    
    
    func attemptPurchaseForItemWith(productIndex: Product) {
        let product = products[productIndex.rawValue]
        let payment = SKPayment(product: product)
        
        SKPaymentQueue.default().add(payment)
    }
}

extension IAPService: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(transaction)
                print("succ")
                break
            case . restored:
                break
            case .failed:
                break
            case .deferred:
                break
            case .purchasing:
            break
                
            }
        }
    }
}
