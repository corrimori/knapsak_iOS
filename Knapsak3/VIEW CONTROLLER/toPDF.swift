//
//  toPDF.swift
//  Knapsak3
//
//  Created by Corrine Morita on 9/17/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//

import UIKit

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
