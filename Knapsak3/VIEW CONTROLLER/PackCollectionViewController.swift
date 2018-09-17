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
    
    @IBOutlet var PackCollectionView: UICollectionView!
    
    // IBOutlet kidItemImage: UIImageView
    
    let itemsToPack = ["Boy Undies", "Boy Undies", "Boy Undies", "Girl Undies", "Tshirt", "Socks", "Shorts", "Toothbrush"]
    
    let itemImage: [UIImage] = [
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "boy_undiesG")!,
        UIImage(named: "girl_undiesG")!,
        UIImage(named: "tshirtB")!,
        UIImage(named: "socksG")!,
        UIImage(named: "shorts")!,
        UIImage(named: "toothbrush")!,
        ]
    
    //define property for array to be passed from SetUpViewController
    var quantities : [Int] = []
//    var quantityArray : [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        print("=========== On Packing View Page ===========")
        
        // get quantities value from SetUpViewController
        print("quantities-------->", quantities)
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "packCell", for: indexPath) as! PackCollectionViewCell
    
        // Configure the cell
        cell.itemLabel.text = itemsToPack[indexPath.item]
        cell.itemImage.image = itemImage[indexPath.item]

            
            
            
//        cell.itemImage.isUserInteractionEnabled = true
//
//        @objc func tapGesture() {
//
//            if cell.itemImage.image == UIImage(named: "tshirtB")
//            {
//                cell.itemImage.image = UIImage(named: "tshirtCK")
//
//            } else {
//                cell.itemImage.image = UIImage(named: "tshirtB")
//            }
//        }

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
    
    /* print to PDF
    class PdfTools {
        
        func generatePdfFromCollectionView(_ collectionView: UICollectionView?, filename:String, success:(String) -> ()) {
            
            guard let collectionView = collectionView else {
                return
            }
            
            let pdfData = NSMutableData()
            
            let contentArea = CGRect(
                x: 0,
                y: 0,
                width: collectionView.contentSize.width,
                height: collectionView.contentSize.height
            )
            
            collectionView.frame = contentArea
            
            UIGraphicsBeginPDFContextToData(pdfData, contentArea, nil)
            
            UIGraphicsBeginPDFPage()
            collectionView.drawHierarchy(in: collectionView.bounds, afterScreenUpdates: true)
            UIGraphicsEndPDFContext()
            
            if let filepath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
                let fileFullPath = filepath + "/" + filename
                
                if pdfData.write(toFile: fileFullPath, atomically: true) {
                    success(fileFullPath)
                }
            }
        }
    }
    
    //using the PdfTools
    let pdfTool = PdfTool()
    pdfTool.generatePdfFromCollectionView(self.collectionView, filename: "myFancy.pdf") { (filename) in
    // use your pdf here
    }
 */

}
