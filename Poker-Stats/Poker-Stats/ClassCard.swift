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