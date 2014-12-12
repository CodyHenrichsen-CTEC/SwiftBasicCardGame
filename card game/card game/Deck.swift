//
//  Deck.swift
//  card game
//
//  Created by Cody Henrichsen on 10/18/14.
//  Copyright (c) 2014 CTEC. All rights reserved.
//

import Foundation

public class Deck
{
    private lazy var cards = [Card]()
    
    init()
    {
    
    }
    
    /*
    Documentation goes here.
    */
    func addCard(newCard :Card, atTop :Bool)
    {
        if(atTop)
        {
            self.cards.insert(newCard, atIndex: 0)
        }
        else
        {
            self.cards.append(newCard)
        }
    }
    
    func addCard(newCard :Card)
    {
        self.addCard(newCard, atTop: false)
    }
    
    func drawRandomCard() -> Card
    {
        var randomCard = Card()
        var randomPosition = Int(arc4random() % UInt32(self.cards.count))
        if(randomPosition >= 0)
        {
            randomCard = self.cards[randomPosition]
            self.cards.removeAtIndex(randomPosition)
        }
        return randomCard
    }
}