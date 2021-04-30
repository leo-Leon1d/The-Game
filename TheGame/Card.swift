//
//  Card.swift
//  TheGame
//
//  Created by Леонид Исраелян on 23.04.2021.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var id: Int
    
    static var idFactory = 0
    
    //function for getting every card it's unique id:
    static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
        
    }
    
    init() {
        id = Card.getUniqueId()
    }
    
    
}
