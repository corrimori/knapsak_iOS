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

        // Do any additional setup after loading the view.
       createKnapsakButton.layer.cornerRadius = createKnapsakButton.frame.height/2
       savedKnapsaksButton.layer.cornerRadius = savedKnapsaksButton.frame.height/2
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
