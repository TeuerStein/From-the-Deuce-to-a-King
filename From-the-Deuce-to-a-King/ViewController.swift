//
//  ViewController.swift
//  From-the-Deuce-to-a-King
//
//  Created by OLEKSANDR SOKOLOV on 02.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

