//
//  PackCollectionViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/13/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PackCollectionViewController: UICollectionViewController {
    
    @IBOutlet var tempCollectionView: UICollectionView!
    
    let itemsToPack = ["Boy Undies", "Girl Undies", "Tshirt", "Socks", "Shorts", "Toothbrush"]
    
    let itemImage: [UIImage] = [
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "girl_undiesG")!,
        UIImage(named: "tshirtB")!,
        UIImage(named: "socksG")!,
        UIImage(named: "shorts")!,
        UIImage(named: "toothbrush")!,
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 6
//    }

    // How many sections are there going to be?
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return itemsToPack.count
    }

    // display contents in Item Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tempCell", for: indexPath) as! TempCollectionViewCell
    
        // Configure the cell
        cell.itemLabel.text = itemsToPack[indexPath.item]
        cell.itemImage.image = itemImage[indexPath.item]
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
