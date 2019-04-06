//
//  CustomCollectionViewCell.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/6/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

@IBDesignable
class CustomCollectionViewCell: UICollectionViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
    }
}
