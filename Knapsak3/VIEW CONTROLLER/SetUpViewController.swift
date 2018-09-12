//
//  ViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    // create a property packLists to hold array of PackItem
    var packLists : [PackItem] = []
    var quantityArray : [Int] = []

//    let items = ["Boy Undies", "Girl Undies", "Tshirt", "Socks", "Shorts", "Toothbrush"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        packLists = createItemList()
        print("in create item list")
        
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
        return packLists.count
    }
    
    
    // display contents in Item Cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        

        // get one object
        let packList = packLists[indexPath.row]
        // write label and view to ItemCell
        cell.itemLabel.text = packList.itemName
        cell.itemImageView.image = UIImage(named: packList.itemImage)
        
        print(packList.itemName, "<-- packlist")
        print(packList.itemQuantity, "<--quantity")
//        print(packLists[indexPath.item], "<-- indexPath.item")
//        print(packLists[indexPath.row], "<-- indexPath.row")
// testing 1 item first before creating dynamic population
//        cell.itemLabel.text = "hello"
//        cell.itemImageView.image = UIImage(named: "boy_undiesG")


//        //cell.counterLabel = UILabel()
//        cell.quantity = 0
//        //print("counter label", cell.counterLabel)
//        print("quantity: ", cell.quantity)
//        //        cell.stepper = UIStepper()
//
        quantityArray.append(packList.itemQuantity)
        print("item quantity ARRAY----------->", quantityArray)
        print(packLists, "<<<<<< packLists")

//        cells.append(cell.quantity)
//        print("cell-->", cell)

        return cell
    }
    
// *************************************************************
//
//    var oneQuantity = "passing data test"
    
//    var cells = [Int]()
////    var cells = []
//    
//    let itemImages: [UIImage] = [
//        UIImage(named: "boy_undiesG")!,
//        UIImage(named: "girl_undies")!,
//        UIImage(named: "jacket")!,
//        UIImage(named: "longsleeve")!,
//        UIImage(named: "shorts")!,
//        UIImage(named: "skirt")!,
//        UIImage(named: "socks")!,
//        UIImage(named: "toothbrush")!,
//        UIImage(named: "tshirt")!
////    ]
//
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
//        cell.itemLabel.text = items[indexPath.item]
//        cell.itemImageView.image = itemImages[indexPath.item]
//        //cell.counterLabel = UILabel()
//        cell.quantity = 0
//        //print("counter label", cell.counterLabel)
//        print("quantity: ", cell.quantity)
////        cell.stepper = UIStepper()
//
//        cells.append(cell.quantity)
//        print("cells-->", cells)
//        return cell
//        
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let PackingViewController = segue.destination as? PackingViewController {
////            PackingViewController.text = cell.itemLabel.text
////            PackingViewController.text = oneQuantity
//            PackingViewController.text = oneQuantity
//        }
//    }

    // prepare function
    // loop over cells and pull out quantities
    // set a property on to next controller to set the quantities
}

