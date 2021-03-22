//
//  ContentView.swift
//  Memorize
//
//  Created by Giannini Charles on 3/18/21.
//

import SwiftUI

struct ContentView: View {
    var game: EmojiMemoryGame

    var body: some View {
        return HStack {
            ForEach(game.cards) { card in
               ZStack {
                CardView(card: card)
                    .onTapGesture {
                        game.choose(card: card)
                    }
               }
           }
        }

        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        return ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
        }
    }
}





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: EmojiMemoryGame())
    }
}
