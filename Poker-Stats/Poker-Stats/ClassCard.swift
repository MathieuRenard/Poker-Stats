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
enum Suit {
    case Spade
    case Heart
    case Diamond
    case Club
}

// structure d'une Card
struct Card : CustomStringConvertible {
    var value : Int
    var suit : Suit
    
    var description: String{
    return "Card:\(value)-\(suit)"
    }
}


// structure d'un Flop/Turn/River
struct Board   {
    var flop1 : Card
    var flop2 : Card
    var flop3 : Card
    var turn : Card
    var river : Card
    
}