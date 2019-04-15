//
//  Product.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/12/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import Foundation

class Product {
    
    var numberProduct: Int
    var productName: String
    var totalQuantity: Double
    var sklad: String
    var quantity: Double
    
    init(numberProduct: Int, productName: String, totalQuantity: Double, sklad: String, quantity: Double) {
        self.numberProduct = numberProduct
        self.productName = productName
        self.totalQuantity = totalQuantity
        self.sklad = sklad
        self.quantity = quantity
    }
    
    
    
}
