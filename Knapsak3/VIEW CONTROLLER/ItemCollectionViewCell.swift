//
//  ItemCollectionViewCell.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    // IBOutlet - connects storyboard to code
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    var quantity: Int = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        counterLabel.text = String(Int(sender.value))
        
        print("IN CELL --collection view")
        print("counterLabel text-->", counterLabel.text)
        print("counterLabel-->", counterLabel)
        print("sender-->", sender)

        quantity = Int(sender.value)
        print("quantity = ", quantity)
    }
    
}
