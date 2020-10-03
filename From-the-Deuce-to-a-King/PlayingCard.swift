//
//  PlayingCard.swift
//  From-the-Deuce-to-a-King
//
//  Created by OLEKSANDR SOKOLOV on 02.10.2020.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
        
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
        
        case spades = "♠︎"
        case hearts = "♥︎"
        case clubs = "♣︎"
        case diamonds = "♦︎"
        
        static var all: [Suit] {
            return [Suit.spades,.hearts,.diamonds,.clubs]
        }
        
        var description: String { return rawValue }
    }
    
    enum Rank: CustomStringConvertible{
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRanks: [Rank] = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"),.face("Q"),.face("K")]
            return allRanks
        }
        
        var description: String {
            switch self {
            case .ace: return "ace \(self.order)"
            case .face(let kind): return "face \(kind) \(self.order)"
            case .numeric: return "muneric \(self.order)"
            }
        }
    }
    
    var description: String { return "\(rank)\(suit)" }
}
