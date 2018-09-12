//
//  ViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/10/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

//protocol PackingViewControllerDelegate: class {
//    func quantityPassed(number: Int?)
//}

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
//    weak var delegate: PackingViewControllerDelegate?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // create a property packLists to hold array of PackItem
    var packLists : [PackItem] = []
    var quantityArray : [Int] = []
    
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
        print("#########", packLists[3].itemName)
        packLists[3].itemQuantity = 5
        
// testing 1 item first before creating dynamic population
//        cell.itemLabel.text = "hello"
//        cell.itemImageView.image = UIImage(named: "boy_undiesG")

//        cell.counterLabel = UILabel()
//        cell.stepper = UIStepper()
        print("counter label text>>>>>", cell.counterLabel.text)

        // add quantity to an array to store quantities of all items
        quantityArray.append(packList.itemQuantity)
        print("item quantity ARRAY----------->", quantityArray)
//        print(packLists, "<<<<<< packLists")
//        print("cell-->", cell)
        


        return cell
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print("called in setup view")
        print("sender", sender)
//        quantity = Int(sender.value)
//        print("quantity = ", quantity)
    }
    
// *************************************************************
// attempt to write function to pass data from SETUP VIEW to PACKING VIEW
//
//    var oneQuantity = "passing data test"

    // accessing the Packing View Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let PackingViewController = segue.destination as? PackingViewController {
//            PackingViewController.text = cell.itemLabel.text
//            PackingViewController.text = oneQuantity
            print("array>>>>", quantityArray)

// only able to pass strings through .text
//            let toString = quantityArray.flatMap { String($0) }
//            let toString = ["hi", "ho", "yolo"]
//            let toString = [ "0", "1", "2"]
//            let quantityArrayToString = toString.joined(separator: " ")
            
//            PackingViewController.text = quantityArrayToString
            
            let arr = [0,1,2]
            PackingViewController.quantities = arr
        }
    }

    // prepare function
    // loop over cells and pull out quantities
    // set a property on to next controller to set the quantities
}

