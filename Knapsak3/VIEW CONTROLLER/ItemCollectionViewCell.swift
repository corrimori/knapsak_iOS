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
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    // create a property for the protocol class
    var delegate: DataDelegate?
    var packItem: PackItem?
    var indexPath: IndexPath?
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        counterLabel.text = String(Int(sender.value))
        packItem?.itemQuantity = Int(sender.value)
        
        // get quantity in counterLabel and print for debugging
        print("===============================")
        print("IN CELL --item collection view CELL")
        print("counterLabel text-->", counterLabel.text!)
        
        if let delegate = self.delegate,
            let packItem = self.packItem,
            let indexPath = self.indexPath {
            delegate.updatedData(for: packItem, at: indexPath)
        }
        
     }
    
}
