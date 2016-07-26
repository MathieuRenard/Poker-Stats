//
//  Card.swift
//  Poker-Stats
//
//  Created by Mathieu Renard on 21/07/2016.
//  Copyright © 2016 Mathieu Renard. All rights reserved.
//

import Foundation
import UIKit

// enum des suits
enum Suit : Int  {
    case Spade = 0
    case Heart = 1
    case Diamond = 2
    case Club = 3
}

// structure d'une Card
struct Card : CustomStringConvertible {
    var value : Int
    var suit : Suit
    
    var image : UIImage?{
    
        return UIImage(named: String(format: "%i_%i", value, suit.rawValue))
    }
    
    var description: String{
    return "Card:\(value)-\(suit)"
    }
}


// structure d'un Flop/Turn/River
struct Board   {
   
    var players: [Player]?
    var flop1 : Card?
    var flop2 : Card?
    var flop3 : Card?
    var turn : Card?
    var river : Card?
}


//structure player
struct Player {
    var card1 : Card?
    var card2 : Card?
}