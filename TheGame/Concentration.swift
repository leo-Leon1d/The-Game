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
    
    
    //function for cards to flip:
    func chooseCard (at index: Int) {
        if cards[index].isFaceUp {
        cards[index].isFaceUp = false
        }
        
        else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairs: Int) {
        
        for _ in 0..<numberOfPairs {
            let card = Card()
            cards += [card, card]
        }
        
    }
    
}
