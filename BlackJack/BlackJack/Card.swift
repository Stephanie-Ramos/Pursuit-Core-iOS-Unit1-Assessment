//
//  Card.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// TODO: currently there are 5 errors in the Card struct
// 1. Follow steps from Suit.swift section in the assessment README
// 2. Follow steps from FaceCard.swift section in the assessment README

enum Suit: CaseIterable {
    // ☢️⏺ why is this not linking. Linked.
    case diamond(String) = "♦️"
    // int
    case heart(String) = "♥️"
    case spade(String) = "♠️"
    case club(String) = "♣️"
}

enum FaceCard: CaseIterable { // 🧤 should it be caseiterable. No. This is an optional datatype.
    // ☢️⏺ this must be a raw type in order to have a raw value. fixed it by initializing my enums
    // 💡 This is not working because I have an optional datatype from Struct.
    case jack //= "jack" // Enum case cannot have a raw value if the enum does not have a raw type
    case queen
    case king
}

struct Card {
  var suit: Suit // 👈🏽❌ diamond, heart, spade, or club (enum 🔑)
  var value: Int // 2 - 10
  var isFaceCard: Bool
  var face: FaceCard? // 🔅 ☢️⚠️☢️ does this affect my enum in any way 👻 optional datatype

    
  // all of this is a string
  func stringify() -> String {
    var cardStr = ""
    if self.isFaceCard { // ☢️ I have never seen an if self.bool how does this work? Do I need an initializer?
      cardStr += self.face?.rawValue ?? "🤣" // ☢️⏺ why wouldnt this work I made my enum
        // caseiterable. Yes.
        // access the rawValue from struct face which has a datatype of FaceCard?
        // 💡 .face is connected with struct Card and enum FaceCard
        // jack, queen, king
        
        
        
    } else {
      cardStr += self.value.description // value is from struct Card and the datatype is an int
        // .description is to convert it to a string.
    }
    cardStr += self.suit.rawValue // this is from struct Card
    // extrating a rawValue from enum Suit // ☢️ why is this not literal?
    
    
    
    return cardStr // "10♣️" or "4♦️"
  }
    
    
    
    
    
    
    
    
    
    
    
    
  static func newDeck(aceValue: Int) -> [Card] { // 🔅 let blank1 = Card.newDeck(aceValue: <#T##Int#>)
    // this returns a total of 52 cards
    //
    
    var cards = [Card]() // empty array
    for cardValue in 2..<11 { // 👈🏽 🔅 🦔 // value represents the score value of a card
      for suit in Suit.allCases {
        let card = Card(suit: suit, value: cardValue, isFaceCard: false)
        cards.append(card) // there is a missing face
      }
    }
    for face in FaceCard.allCases {
      for suit in Suit.allCases {
        let card = Card(suit: suit, value: 10, isFaceCard: true, face: face)
        cards.append(card) // Case values are total here. // append all the elements here including FaceCard.
        if let jack = FaceCard?.allCases {
        // ☢️ im figuring out why there is a range above. my value needs to be a 10.
        }
        //    if let jack =  { // I am optional binding here because i am not sure if the value is 10
        //}
                //
                // jack, queen, and king are 10.
                // 👈🏽 Ace can be 1 or 11
        
      }
    }
    for suit in Suit.allCases {
      let card = Card(suit: suit, value: aceValue, isFaceCard: false)
      cards.append(card) // The face or FaceCard goes to the empty array
        
    }
    return cards
  }
}
// 💡 all of my initializers needs to be after the structs and enums.
// my initializer works when I call the Call, then I only have one member in my string.
// 🧩 🧩 just because my memberwise initializer works, it doesnt mean that my enum works within my struct.

let something = Card(suit: <#T##Suit#>, value: <#T##Int#>, isFaceCard: <#T##Bool#>, face: <#T##FaceCard?#>)




// Player
struct Player {
    var score = Int()
    var cards = [Card]
    var playerName = String()
}


// Game
class Game {
    var deck = [Card]
    var player = Player()
    var hitPlayeris = Bool()

    //computed properties Read-only?
    hasMoreCards = Bool() // they are getting thier from structs.
    randomComputerScore = Int()
    
    // initialization
    
    
    
    //methods
    hitMe()
    gameStatus()
    stopHits()
    computerVsPlayer()
    newGame()
}
//"memberwise initializer"
var blank = Game(deck: , player: , hitPlayeris: )
blank.newGame()






// Main
// to allow the user optons between getting new cards by calling the hitMe() method or passing by calling the stopHits() method.
repeat {
    
    
    repeat {
        
        // this instance should determine if the game play should stop.
        var gameOver = Game(hitPlayeris: false)
        
    } while //statement
    
    
} while //statement
