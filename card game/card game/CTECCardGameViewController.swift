//
//  CTECCardGameViewController.swift
//  card game
//
//  Created by Cody Henrichsen on 10/21/14.
//  Copyright (c) 2014 CTEC. All rights reserved.
//

import Foundation
import UIKit

class CTECCardGameViewController : UIViewController
{
    var clickCount :Int = 0
    var buttonTitle = String()
    lazy var randomDeck = PlayingCardDeck()
    
    @IBOutlet weak var firstButton :UIButton!
    
    @IBOutlet weak var countLabel :UILabel!
    
    @IBAction func wasClicked(sender :UIButton)
    {
        countLabel.text = "Card flip count: " + String(clickCount)
        clickCount++
        buttonTitle = String(sender.currentTitle!)
        if(countElements(buttonTitle) != 0 )
        {
            var cardImage :UIImage = UIImage(named: "cardBack")!
            sender.setBackgroundImage(cardImage,  forState: UIControlState.Normal)
            sender.setTitle("", forState: UIControlState.Normal)
        }
        else
        {
            var cardImage :UIImage = UIImage(named: "cardFront")!
            sender.setBackgroundImage(cardImage,  forState: UIControlState.Normal)
            let tempCard  = randomDeck.drawRandomCard() as? PlayingCard
            //var temp = tempCard.getContents()
            
            var cardTitle = tempCard?.getContents()
            sender.setTitle(cardTitle, forState: UIControlState.Normal)
        }
        
    }
    
}