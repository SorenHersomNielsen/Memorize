//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by SΓΈren Nielsen on 18/11/2021.
//

import SwiftUI


class EmojiMenoryGame: ObservableObject {
    
    static let emojis = ["π", "π¬", "π", "π", "π", "βοΈ", "π²", "π", "π", "π", "π", "π","π","π", "π", "π»", "π", "π΅", "π©" ,"π ", "π"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfParisOfCards: 3) { pairIndex in emojis[pairIndex]}
    }
    
    

    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
         model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
