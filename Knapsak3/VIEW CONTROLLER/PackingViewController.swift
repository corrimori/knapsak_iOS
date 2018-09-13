//
//  PackingViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/11/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

class PackingViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var PackCollectionView: UICollectionView!

    // create array to display the pack items and array for images
    let packingItems = ["boy_undies", "girl_undies", "tshirt", "socks", "shorts", "toothbrush"]
    
    //define property for array to be passed from SetUpViewController
    var quantities : [Int] = []
//    var quantities = [Int]()
    var quantityArray : [Int] = []
    
    let packingImages: [UIImage] = [
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "tshirt")!,
        UIImage(named: "socks")!,
        UIImage(named: "shorts")!,
        UIImage(named: "toothbrush")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // from grid layout ray w video
        let width = view.frame.size.width/2
        let layout = PackCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
        print("=========== On Packing View Page ===========")

        // get quantities value from SetUpViewController
        quantityArray = quantities
        print("quantities-------->", quantities)
        
        
        /*
        //convert array to string from SetUpViewController
        let arrayToString = quantities.map(String.init).joined(separator: ", ")
        
        // change text on View to the passed array
        quantityLabel.text = arrayToString
        */
        
    }
    
    
    // How many sections are there going to be?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("packing items count>>>>", packingItems.count)
        return packingItems.count
    }
        
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//            if let label = cell.viewWithTag(100) as UILabel? {
//        label.text = packingItems[indexPath.row]
//    }
//      return cell
//}
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PackCell", for: indexPath) as! PackCollectionViewCell
        cell.packImageLabel.text = packingItems[indexPath.item]
        print("indexPath>>>", indexPath.item)
        cell.packImageView.image = packingImages[indexPath.item]

        return cell
    }

/* run through array of items
 for i=0
    while quantity > 0
     print cell.packImageView.image = packingImages[indexPath  l
     
 
*/
    
    
    /* *************************** BUTTON ON/OFF STATE ******************************************************
    
    let myButton = UIButton(frame : CGRectMake (10, 300, 100, 40))
    myButton.setTitle("My Button", forControlState : UIControlState.Normal)
    myButton.setImage(UIImage(named : "unselectedImage"), forState: UIControlState.Normal)
    myButton.setImage(UIImage(named : "selectedImage"), forState: UIControlState.Selected)
    myButton.addTarget(self, action: #selector(myButtonTapped), forControlEvents: UIControlEvents.TouchUpInside)
    self.view.addSubview(myButton)
    
    func myButtonTapped(){
        if myButton.isSelected == true {
            myButton.isSelected = false
        }else {
            myButton.isSelected = true
        }
    }
     
     OR ========================
     
     @IBAction func didTapButton(_ sender: UIButton) {
     for button in self.view.subviews as [UIView] {
     if button is UIButton {
     // Do whatever you want
     button.layer.borderColor = button.tag == sender.tag ? UIColor.blue.cgColor : UIColor.lightGray.cgColor
     }
     }
     }
    ********************************************************************************************************** */
    

}
