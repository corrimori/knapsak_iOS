//
//  PackingViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/11/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class PackingViewController: UIViewController {

    @IBOutlet weak var quantityLabel: UILabel!
    
//    var text: String? = "no data"
    var quantities = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("On Packing View Page")
//        quantityLabel.text = text
        quantityLabel.text = "reached QL"
        print("QL----->", quantityLabel)

    }

}
