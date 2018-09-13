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
    
//    var self.itemQuantity: Int = 0
    var quantity: Int = 0

    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        counterLabel.text = String(Int(sender.value))

        // get quantity in counterLabel and print for debugging
        print("===============================")
        print("IN CELL --item collection view CELL")
        print("counterLabel text-->", counterLabel.text!)
//        print("counterLabel-->", counterLabel)
//        print("sender-->", sender)
        quantity = Int(sender.value)
        print(self.itemLabel.text!, " = ", quantity)
//        print("self.itemLabel.text", self.itemLabel.text!)
        print("itemLabel = ", itemLabel.text!)
        
     }
    
}
