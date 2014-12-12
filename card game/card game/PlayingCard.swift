//
//  PlayingCard.swift
//  card game
//
//  Created by Cody Henrichsen on 10/19/14.
//  Copyright (c) 2014 CTEC. All rights reserved.
//

import Foundation

public class PlayingCard : Card
{
    var rank :Int = 0
    
    public func setRank(rank :Int)
    {
        if( rank <= PlayingCard.maxRank())
        {
            self.rank = rank
        }
    }
    
    
    var suit :String = ""
    
    public func setSuit(suit :String)
    {
        if(contains(PlayingCard.validSuits(),suit))
        {
            self.suit = suit
        }
        else
        {
            self.suit = "invalid suit"
        }
    }
    
    
    
    class func rankStrings() -> [String]
    {
        return ["?", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["♥","♦","♠","♣"]
    }
    
    public func getContents() ->String
    {
        var cardTitle :String
        cardTitle = PlayingCard.rankStrings()[rank] + suit
        return cardTitle
    }
    
    class func maxRank() -> Int
    {
        return (rankStrings().count)-1
    }
    
    override init()
    {
        super.init(textContents: PlayingCard.rankStrings()[rank] + suit)
    }
    
}