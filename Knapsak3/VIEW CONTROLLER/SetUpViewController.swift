//
//  ViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

// animalObject = packItem    AnimalModel = PackItem

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // create a property packList to hold array of PackItem
    var packList : [PackItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        packList = createItemList()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    
    func createItemList() -> [PackItem] {
        
        let boy_undies = PackItem()
        boy_undies.itemImage = "boy_undies"
        boy_undies.itemName = "Boy Undies"
        boy_undies.itemQuantity = 0
        
        let girl_undies = PackItem()
        girl_undies.itemImage = "girl_undies"
        girl_undies.itemName = "Girl Undies"
        girl_undies.itemQuantity = 0
        
        let tshirt = PackItem()
        tshirt.itemImage = "tshirt"
        tshirt.itemName = "T-shirt"
        tshirt.itemQuantity = 0
        
        let socks = PackItem()
        socks.itemImage = "socks"
        socks.itemName = "Socks"
        socks.itemQuantity = 0
        
        let shorts = PackItem()
        shorts.itemImage = "shorts"
        shorts.itemName = "Shorts"
        shorts.itemQuantity = 0
        
        let toothbrush = PackItem()
        toothbrush.itemImage = "toothbrush"
        toothbrush.itemName = "Toothbrush & Toothpaste"
        toothbrush.itemQuantity = 0
        
        return [boy_undies, girl_undies, tshirt, socks, shorts, toothbrush]
    }

    
    // How many sections are there going to be?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return packList.count
    }
    
    // display contents in Item Cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell

        // get one object
        let packListItem = packList[indexPath.row]
        
        // write label and view to ItemCell
        cell.itemLabel.text = packListItem.itemName
        cell.itemImageView.image = UIImage(named: packListItem.itemImage)
        cell.delegate = self
        cell.packItem = packListItem
        cell.indexPath = indexPath
        
        return cell
    }

 // SEQUE to pass data to PackCollectionViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segToPackCollView" {

            let packCollectionViewController = segue.destination as! PackCollectionViewController
            packCollectionViewController.packList = packList
        }

    }
}

extension ViewController: DataDelegate {
    func updatedData(for packItem: PackItem, at indexPath: IndexPath) {
        print("  ")
        print("+++++++ PASSING DATA TO CELL +++++++")
        print("DataDelegate: called updated Data for packItem: ", packItem)
        print("New quantity in delegate : ", packItem.itemQuantity)
        self.packList[indexPath.item] = packItem
    }
}

