//
//  MenuController.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/14/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit


class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuOptions = ["Home","Expenditure", "Income", "Return","Defective","Clients","Products"]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        
        cell.optionName.text = menuOptions[indexPath.row]
        cell.optionImage.image = UIImage(named: "menu")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: menuOptions[indexPath.row], sender: self)
    }

}
