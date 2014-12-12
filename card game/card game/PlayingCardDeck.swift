//
//  PlayingCardDeck.swift
//  card game
//
//  Created by Cody Henrichsen on 10/20/14.
//  Copyright (c) 2014 CTEC. All rights reserved.
//

import Foundation

public class PlayingCardDeck : Deck
{
    override init()
    {
        super.init()
        for currentSuit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank++
            {
                var currentCard = PlayingCard()
                currentCard.setRank(rank)
                currentCard.setSuit(currentSuit)
                self.addCard(currentCard)
            }
            
        }
    }
}