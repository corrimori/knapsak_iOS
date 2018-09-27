//
//  MenuViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/16/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var createKnapsakButton: UIButton!
    @IBOutlet weak var savedKnapsaksButton: UIButton!  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = nil
//        navigationController?.navigationBar.barTintColor = UIColor.orange


        createKnapsakButton.layer.cornerRadius = createKnapsakButton.frame.height/2
        savedKnapsaksButton.layer.cornerRadius = savedKnapsaksButton.frame.height/2
    }

}
