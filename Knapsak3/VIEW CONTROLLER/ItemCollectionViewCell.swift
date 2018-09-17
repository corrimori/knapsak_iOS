//
//  ItemCollectionViewCell.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

protocol PassQuantityDelegate: class {
//    func quantityPassed(number: Int?)
    func quantityPassed(for packObject: PackItem, at: IndexPath)
    // pass the itemLabel and quantity (sender.value)
}

class ItemCollectionViewCell: UICollectionViewCell {
    
    // create a property for the protocol class
    weak var delegate: PassQuantityDelegate?
    
    var quantity: Int = 0
    
    // IBOutlet - connects storyboard to code
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        counterLabel.text = String(Int(sender.value))

        // get quantity in counterLabel and print for debugging
        print("===============================")
        print("IN CELL --item collection view CELL")
        print("counterLabel text-->", counterLabel.text!)
        quantity = Int(sender.value)
        print(self.itemLabel.text!, " = ", quantity)
        print("self.itemLabel.text", self.itemLabel.text!)
        print("itemLabel = ", itemLabel.text!)
        
     }
    
    // when done
    // loop through stepper to collect values stored in it and push to array
        
}
