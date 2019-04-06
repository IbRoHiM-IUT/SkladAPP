//
//  MenuViewController.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/2/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case ostatok
    case rasxodi
    case prixodi
    case vazvrati
    case defektniy
    case klienti
    case tovari
    
}

class MenuViewController: UITableViewController {
    
    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        guard let menuType = MenuType(rawValue: indexPath.row) else {
            return
        }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
    }
    
}
