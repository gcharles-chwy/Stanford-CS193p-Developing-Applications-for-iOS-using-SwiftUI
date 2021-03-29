//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Giannini Charles on 3/22/21.
//  ViewModel - It has an idea of how things will be drawn on the screen. So we will import SwiftUI
//  Class because we want to use reference semantics.
//  Class is in the heap and accessed via pointers


import SwiftUI

class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🎱","🪂","🏀", "🍎", "⭐️"].shuffled()
        let numberOfCards = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: numberOfCards) { emojis[$0] }
    }
    
    // MARK: - View Access to the Model, controlled by ViewModel
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }

    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}

