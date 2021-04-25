//
//  Concentration.swift
//  TheGame
//
//  Created by Леонид Исраелян on 23.04.2021.
//

import Foundation

//API (Application Programming Interface)

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard (at index: Int) {
        
    }
    
    init(numberOfPairs: Int) {
        
        for _ in 0..<numberOfPairs {
            let card = Card()
            cards += [card, card]
        }
        
    }
    
}
