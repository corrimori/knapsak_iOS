//
//  PackCollectionViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/13/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

protocol DataDelegate {
    func updatedData(for packItem: PackItem, at: IndexPath)
}

class PackCollectionViewController: UICollectionViewController {
    
    @IBOutlet var PackCollectionView: UICollectionView!
    
    var packList : [PackItem] = []
    var expandedPackList : [PackItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // expand the array so it can render multiple items of each item
        for item in packList {
            let quantity = item.itemQuantity
            if quantity > 0 {
                for _ in 1...quantity {
                    expandedPackList.append(item)
                }
            }
        }
        
        print("---------- In Pack Collection VC -----------")
        print("Expanded pack list ", expandedPackList[0].itemName)
        
    }
    
    // MARK: UICollectionViewDataSource
    
    // How many items are there going to be?
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // loop over packList and accumulate each quantity
        return expandedPackList.count
    }
    
    // display contents in Item Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "packCell", for: indexPath) as! PackCollectionViewCell
        
        // let packItem = expandedPackList[indexPath.item]
        
        // Configure the cell
        cell.itemLabel.text = expandedPackList[indexPath.item].itemName
        cell.itemButton.setImage(UIImage(named : expandedPackList[indexPath.item].itemImage), for: UIControlState.normal)
        cell.itemButton.setImage(UIImage(named : expandedPackList[indexPath.item].itemImage + "CK"), for: UIControlState.selected)
        cell.itemButton.addTarget(self, action: #selector(itemButtonTapped), for: UIControlEvents.touchUpInside)
        
        return cell
    }
    
    @objc func itemButtonTapped(sender: UIButton){
        print("Button tapped")
        let itemButton = sender
        if itemButton.isSelected == true {
            itemButton.isSelected = false
        }else {
            itemButton.isSelected = true
        }
    }

    
}
