//
//  SetUpViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class SetUpViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var packList : [PackItem] = []
    let items = ["Tshirt", "Socks", "Boy Undies", "Girl Undies", "Shorts", "Toothbrush"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        packList = createItemList()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func createItemList() -> [PackItem] {
        
        let tshirt = PackItem()
        tshirt.itemImage = ""
        tshirt.itemName = "Tshirt"
        tshirt.itemQuantity = 0
        
        let socks = PackItem()
        socks.itemImage = ""
        socks.itemName = "Socks"
        socks.itemQuantity = 0
        
        let boy_undies = PackItem()
        boy_undies.itemImage = ""
        boy_undies.itemName = "Boy Undies"
        boy_undies.itemQuantity = 0
        
        let girl_undies = PackItem()
        girl_undies.itemImage = ""
        girl_undies.itemName = "Girl Undies"
        girl_undies.itemQuantity = 0
        
        let shorts = PackItem()
        shorts.itemImage = ""
        shorts.itemName = "Shorts"
        shorts.itemQuantity = 0
        
        let toothbrush = PackItem()
        toothbrush.itemImage = ""
        toothbrush.itemName = "Toothbrush & Toothpaste"
        toothbrush.itemQuantity = 0
        
        return [tshirt, socks, boy_undies, girl_undies, shorts, toothbrush]
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//        
//        let packLists = packList[indexPath.row]
//        cell.textLabel?.text = packLists.emoji + "  " + packLists.itemName
//        
//        return cell
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
//        let packingList = packList[index.Path.row]
//        cell.textLabel?.text = packingList.
//
//        cell.itemLabel.text = items[indexPath.item]
//        cell.itemImageView.image = itemImages[indexPath.item]
//        //cell.counterLabel = UILabel()
//        cell.quantity = 0
//        //print("counter label", cell.counterLabel)
//        print("quantity: ", cell.quantity)
//        //        cell.stepper = UIStepper()
//
//        cells.append(cell.quantity)
        print("cell-->", cell)
        
        return cell
    }
    
    // *************************************************************
    
//    let items = ["boy undies", "girl undies", "jacket", "longsleeve", "shorts", "skirt", "socks", "toothbrush", "tshirt"]
////    let items = [PackItem("boy undies"), PackItem("girl undies")]
//    
//    var oneQuantity = "passing data test"
//    var cells = [Int]()
////    var cells = []
//    
//    let itemImages: [UIImage] = [
//        UIImage(named: "boy_undies")!,
//        UIImage(named: "girl_undies")!,
//        UIImage(named: "jacket")!,
//        UIImage(named: "longsleeve")!,
//        UIImage(named: "shorts")!,
//        UIImage(named: "skirt")!,
//        UIImage(named: "socks")!,
//        UIImage(named: "toothbrush")!,
//        UIImage(named: "tshirt")!
//
//    ]
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

