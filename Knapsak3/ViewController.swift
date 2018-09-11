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
    
    
    
    let items = ["boy undies", "girl undies", "jacket", "longsleeve", "shorts", "skirt", "socks", "toothbrush", "tshirt"]
    
    var oneQuantity = 0
    
    let itemImages: [UIImage] = [
        UIImage(named: "boy_undies")!,
        UIImage(named: "girl_undies")!,
        UIImage(named: "jacket")!,
        UIImage(named: "longsleeve")!,
        UIImage(named: "shorts")!,
        UIImage(named: "skirt")!,
        UIImage(named: "socks")!,
        UIImage(named: "toothbrush")!,
        UIImage(named: "tshirt")!

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        cell.itemLabel.text = items[indexPath.item]
        cell.itemImageView.image = itemImages[indexPath.item]
//        cell.counterLabel = UILabel()
        print("counter label", cell.counterLabel)
//        cell.stepper = UIStepper()
        
        return cell
        
    }

}

