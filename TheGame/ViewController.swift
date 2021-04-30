//
//  ViewController.swift
//  TheGame
//
//  Created by Леонид Исраелян on 23.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properies

    //range of emojis:
    let emojiChoices = ["🦁", "🐵", "🐷", "🐶", "🐼", "🐰"]
    
    var emoji = [Int: String]()
    
    @IBOutlet var cardButtons: [UIButton]! //outlet for cards
    
    @IBOutlet weak var flipCountLabel: UIButton! //flips counter button
    
    lazy var game = Concentration(numberOfPairs: cardButtons.count / 2)
    
    //MARK: - Methods
    
    //function for cards to flip by a tap:
    @IBAction func touchCard(_ sender: UIButton) {
        
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
    }
    
    //function for cards to show "?" or an emoji (not finished yet):
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle("emoji", for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                
            }
            
            else {
                
                button.setTitle("?", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 1, green: 0.4226291776, blue: 0.4529187083, alpha: 0.8470588235)
                
            }
            
        }
        
    }
    
    //function for randomizing cards while they are not opened:
    func emoji (for card: Card) -> String {
        if emoji[card.id] != nil {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
        }
        return emoji[card.id] ?? "?"
    }
    
}

