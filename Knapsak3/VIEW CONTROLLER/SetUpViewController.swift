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
        boy_undies.itemImage = "boy_undiesG"
        boy_undies.itemName = "Boy Undies"
        boy_undies.itemQuantity = 0
        
        let girl_undies = PackItem()
        girl_undies.itemImage = "girl_undiesG"
        girl_undies.itemName = "Girl Undies"
        girl_undies.itemQuantity = 0
        
        let tshirt = PackItem()
        tshirt.itemImage = "tshirtB"
        tshirt.itemName = "T-shirt"
        tshirt.itemQuantity = 0
        
        let socks = PackItem()
        socks.itemImage = "socksG"
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
        

        
// ********************** PRINT TO DEBUG *******************************
        
        print("----------------------------------------")
        print("collection view --  cellForItemAt indexPath")
        print("display cell")


//        print("-------", ItemCollectionViewCell)
//        print(packList, "<-- $$$$$$$ packlist")
//        print(packList.itemName, "<-- packlist name")
//        print(packList.itemQuantity, "<--quantity")
//        print(packLists[indexPath.item], "<-- indexPath.item")
//        print(packLists[indexPath.row], "<-- indexPath.row")
//        print("######### 1", packLists[1].itemName)
//        print("######### 2", packLists[2].itemName)
//        print("######### 3", packLists[3].itemName)
//        print("######### Q", packLists[3].itemQuantity)

//        print("######### SOCKS QUANTITY", packLists[3].itemQuantity)
//        packLists[3].itemQuantity = 0
//        print("item Q", packLists[3].itemQuantity)
        
// testing 1 item first before creating dynamic population
//        cell.itemLabel.text = "hello"
//        cell.itemImageView.image = UIImage(named: "boy_undiesG")

//        cell.counterLabel = UILabel()
//        cell.stepper = UIStepper()
//        print("counter label text>>>>>", cell.counterLabel.text)

        // add quantity to an array to store quantities of all items
//        quantityArray.append(packList.itemQuantity)
//        print("item quantity ARRAY----------->", quantityArray)
//        print(packLists, "<<<<<< packLists")
//        print("cell-->", cell)
        
// try to collect the counterLabel quanity values stored in stepper
//++        cells.append(cell)
// *************************************************************

        return cell
    }

    
// *************************************************************
// attempt to write function to pass data from SETUP VIEW to PACKING VIEW

    // accessing the Packing View Controller
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let PackCollectionViewController = segue.destination as? PackCollectionViewController {
    
            // send value of quantities to PackingViewController
//            PackCollectionViewController.quantities = [3,0,2,2,1,1]
//        }
//    }
// *************************************************************
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segToPackCollView" {

            let PackCollectionViewController = segue.destination as! PackCollectionViewController
            PackCollectionViewController.delegate = self

            if let indexPath = self.ViewController.indexPath(for: sender as! ItemCollectionViewCell) {
                let animalData = self.allAnimals[indexPath.item]
                PackCollectionViewController.animal = animalData
                PackCollectionViewController.indexPath = indexPath
            }
            
        }
    }

}


extension ViewController: DataDelegate {
    func updatedData(for packItem: PackItem, at indexPath: IndexPath) {
        print("+++++++ PASSING DATA TO CELL +++++++")
        print("DataDelegate: called updated Data for packItem: ", packItem)
        self.packList[indexPath.item] = packItem
//        print("packList[indexPath.item] = ", packList[indexPath.item])
//        print("packList[indexPath.roe] = ", packList[indexPath.row])

        self.collectionView.reloadItems(at: [indexPath])
    }
}

