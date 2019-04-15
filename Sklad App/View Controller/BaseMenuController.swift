//
//  BaseMenuController.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/14/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

class BaseMenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
//        self.revealViewController()?.rearViewRevealWidth = 240
    }
    

}
