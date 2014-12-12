//
//  Card.swift
//  card game
//
//  Created by Cody Henrichsen on 10/16/14.
//  Copyright (c) 2014 CTEC. All rights reserved.
//

import Foundation

public class Card
{
    var contents :String
    var matched: Bool
    var chosen :Bool
   
    init()
    {
        self.contents = String()
        self.chosen = false
        self.matched = false
    }
    
    init(textContents :String)
    {
        self.contents = textContents
        self.chosen = false
        self.matched = false
    }
    
    func match(matchingCards: [Card]) -> Int
    {
        var matchValue:Int = 0
        for currentCard in matchingCards
        {
            if(currentCard.contents == self.contents)
            {
                matchValue = 1
            }
        }
        
        return matchValue
    }
    
    
}