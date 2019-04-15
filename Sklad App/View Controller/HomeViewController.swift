//
//  HomeViewController.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/2/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: BaseMenuController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var tableView: UITableView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(menuButton(_:)))
        
        products = createProductArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    //==================
    func fetchAllIncomings() {
        guard let url = URL(string: "http://192.168.0.106:8080/companies/1") else {
            return
        }
        
//        guard let url1 = URL(string: "https://api.myjson.com/bins/mofc4") else{return}
        Alamofire.request(url,
                          method: .get)
            .validate()
            .responseJSON { response in
                guard response.result.isSuccess else {
                    print("Error while fetching data")
                    return
                }
                
                let swiftyJsonVar = JSON(response.result.value!)
                print(swiftyJsonVar)
                //print(swiftyJsonVar[0]["attribute_name"].string!)
        }
    }
   
    
    func createProductArray() -> [Product]{
        var tempArray: [Product] = []
        
        let product1 = Product(numberProduct: 1, productName: "DISK DAMAS QORA 12", totalQuantity: 2244, sklad: "OSNOVNOY", quantity: 2244)
        let product2 = Product(numberProduct: 2, productName: "AUSTONE 295/80R22.5 AT115", totalQuantity: 2244, sklad: "Tamojniy", quantity: 2244)
        let product3 = Product(numberProduct: 3, productName: "AUSTONE 165/80R12 RP115", totalQuantity: 2244, sklad: "Tamojniy", quantity: 2244)
        let product4 = Product(numberProduct: 4, productName: "AUSTONE 295/80R22.5", totalQuantity: 2244, sklad: "OSNOVNOY", quantity: 2244)
        let product5 = Product(numberProduct: 5, productName: "AUSTONE 295/80R22.5 AT115453", totalQuantity: 2244, sklad: "Tamojniy", quantity: 2244)
        let product6 = Product(numberProduct: 6, productName: "APTANY 295/80R22.5 AT115", totalQuantity: 2244, sklad: "OSNOVNOY", quantity: 2244)
        
//        let product2 = Product(name: "DISK DAMAS QORA 12", quantity: 2244, storeNameTo: "OSNOVNOY", storeNameFrom: "Tamojniy", date: " 21.03.2019")
//        let product3 = Product(name:"AUSTONE 295/80R22.5 AT115", quantity: 1894, storeNameTo: "OSNOVNOY", storeNameFrom: "Tamojniy", date: " 21.03.2019")
//
        tempArray.append(product1)
        tempArray.append(product2)
        tempArray.append(product3)
        tempArray.append(product4)
        tempArray.append(product5)
        tempArray.append(product6)


        return tempArray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let product = products[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! TableViewCell
        
        cell.setProduct(product: product)
        return cell
    }
    
    
}

