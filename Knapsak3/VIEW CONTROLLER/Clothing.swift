//
//  Clothing.swift
//  Knapsak3
//
//  Created by Corrine Morita on 10/22/18.
//  Copyright © 2018 Corrine Morita. All rights reserved.
//
//

import UIKit

enum ClothingType: String {
    
    case boy_undies, girl_undies, tshirt, longsleeve, socks, shorts, pants, jacket, toothbrush
}

struct PackItem {
    let type: ClothingType
    let quantity: Int
}

// do not need specifics of clothing items, generic types
class ClothingItem {
    let type: ClothingType
    var name: String?
    init(type: ClothingType, name: String? = nil) {
        self.type = type
        self.name = name
    }
}

class KnapSak {
    var ownerName: String?
    var description: String?
    var duedate: Date?
    
    // checklist to see what needs to be packed
    private(set) var packItems = [PackItem]()
    
    // holds all clothing items to the packItems as defined in the PackItem
    private(set) var clothingItems = [ClothingItem]()
    
    // adds quantity clothing item to the packItems as defined by the PackItem
    
    func addClothing(packItem: PackItem) {
        
        for _ in 0..<packItem.quantity {
            let clothingItem = ClothingItem(type: packItem.type)
            clothingItems.append(clothingItem)
        }
    }
    
    init(owner: String? = nil, description: String? = nil, duedate: Date? = nil) {
        
        self.ownerName = owner
        self.description = description
        self.duedate = duedate
    }
    
    func add(packItem: PackItem) {
        
        packItems.append(packItem)
    }
}
