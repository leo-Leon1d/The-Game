//
//  Card.swift
//  TheGame
//
//  Created by Леонид Исраелян on 23.04.2021.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatced = false
    var id: Int
    
    static var idFactory = 0
    
    static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
        
    }
    
    init() {
        id = Card.getUniqueId()
    }
    
    
}
