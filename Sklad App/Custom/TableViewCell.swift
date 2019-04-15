//
//  TableViewCell.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/12/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var numberProduct: UILabel!
    @IBOutlet var productName: UILabel!
    @IBOutlet var totalQuantity: UILabel!
    @IBOutlet var sklad: UILabel!
    @IBOutlet var quantity: UILabel!
    
    func setProduct(product: Product){
        
        numberProduct.text = String(product.numberProduct)
        productName.text = product.productName
        totalQuantity.text = String(product.totalQuantity)
        sklad.text = product.sklad
        quantity.text = String(product.quantity)
        
    }
    
}
