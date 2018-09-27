//
//  PackCollectionViewController.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/13/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

protocol DataDelegate {
    func updatedData(for packItem: PackItem, at: IndexPath)
}

class PackCollectionViewController: UICollectionViewController {
    
    @IBOutlet var PackCollectionView: UICollectionView!
    
    var packList : [PackItem] = []
    var expandedPackList : [PackItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // expand the array so it can render multiple items of each item
        for item in packList {
            let quantity = item.itemQuantity
            if quantity > 0 {
                for _ in 1...quantity {
                    expandedPackList.append(item)
                }
            }
        }
        
        print("---------- In Pack Collection VC -----------")
        print("Expanded pack list ", expandedPackList[0].itemName)
        
    }
    
    // MARK: UICollectionViewDataSource
    
    // How many items are there going to be?
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // loop over packList and accumulate each quantity
        return expandedPackList.count
    }
    
    // display contents in Item Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "packCell", for: indexPath) as! PackCollectionViewCell
        
        // let packItem = expandedPackList[indexPath.item]
        
        // Configure the cell
        cell.itemLabel.text = expandedPackList[indexPath.item].itemName
        cell.itemButton.setImage(UIImage(named : expandedPackList[indexPath.item].itemImage), for: UIControlState.normal)
        cell.itemButton.setImage(UIImage(named : expandedPackList[indexPath.item].itemImage + "CK"), for: UIControlState.selected)
        cell.itemButton.addTarget(self, action: #selector(itemButtonTapped), for: UIControlEvents.touchUpInside)
        
        return cell
    }
    
    @objc func itemButtonTapped(sender: UIButton){
        print("Button tapped")
        let itemButton = sender
        if itemButton.isSelected == true {
            itemButton.isSelected = false
        }else {
            itemButton.isSelected = true
        }
    }
    
//    // ******************  start printing
//    weak var printButtonTapped: UIBarButtonItem! {
//        self.printView()
//    }
//
//    func printView() {
//        let printController = UIPrintInteractionController.shared
//
//        let printInfo = UIPrintInfo(dictionary: nil)
//        printInfo.jobname = "printing"
//        printInfo.outputType = .general //what printing
//
//        printController.printInfo = printInfo
//
//        printController.printingItem = imageView.image // image going to print
//
//        printController.present(animated: true) { (_, isPrinted, error) in
//            if error == nil {
//                if isPrinted {
//                    print("printing success")
//                } else {
//                    print("printing unsucessful")
//                }
//            }
//
//            completionHandler;: UIPrintInteractionCompletionHandler?)
//    }
//
//        public func printInteractionController(_ printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
//
//
//        func printButton(sender: AnyObject) {
//
//            let printInfo = UIPrintInfo(dictionary:nil)
//            printInfo.outputType = UIPrintInfoOutputType.general
//            printInfo.jobName = "Test Print"
//
//            // Set up print controller
//            let printController = UIPrintInteractionController.shared
//            printController.printInfo = printInfo
//
//            // Assign a UIImage version of my UIView as a printing iten
//            printController.printingItem = self.view.toImage()
//
//            // Assign a Specific Image to printing item
//            //printController.printingItem = customImageView.image
//
//            // Print With Dialogue Box
//            //printController.present(from: self.view.frame, in: self.view, animated: true, completionHandler: nil)
//
//
//            // Print Without Dialogue Box
//            printController.print(to: defaultPrinter, completionHandler: {(controller, success, error) -> Void in
//                if success {
//                    debugPrint("Printing Completed.")
//                } else {
//                    debugPrint("Printing Failed.")
//                }
//            })
//        }
//    
//        
//    }
    
}
