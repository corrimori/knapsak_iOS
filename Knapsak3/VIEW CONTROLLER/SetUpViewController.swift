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
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        // get one object
        let packList = packLists[indexPath.row]
        print(packList.itemName, "<-- packlist")
        print(packList.itemQuantity, "<--quantity")
        print(packLists[indexPath.item], "<-- indexPath.item")
        print(packLists[indexPath.row], "<-- indexPath.row")
//        cell.itemLabel.text = "hello"
        cell.itemLabel.text = packList.itemName
//        cell.itemImageView.image = UIImage(named: "boy_undiesG")
        cell.itemImageView.image = UIImage(named: packList.itemImage)

//        //cell.counterLabel = UILabel()
//        cell.quantity = 0
//        //print("counter label", cell.counterLabel)
//        print("quantity: ", cell.quantity)
//        //        cell.stepper = UIStepper()
//
//        cells.append(cell.quantity)
//        print("cell-->", cell)

        return cell
    }
    
    // *************************************************************
    
//    let items = ["boy undies", "girl undies", "jacket", "longsleeve", "shorts", "skirt", "socks", "toothbrush", "tshirt"]
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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.dataSource = self
//        collectionView.delegate = self
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return items.count
//    }
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

