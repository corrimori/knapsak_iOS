//
//  PackingViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/11/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class PackingViewController: UIViewController {

    @IBOutlet weak var quanityLabel: UILabel!
    
    var text: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("On Packing View Page")
        quanityLabel.text = text

    }

}
