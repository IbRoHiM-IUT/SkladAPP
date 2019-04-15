//
//  CustomButton.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/11/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup() {
        
        //layer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        layer.cornerRadius = layer.frame.height/2
        
    }
}
