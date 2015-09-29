//
//  Quotes.swift
//  quotes
//
//  Created by Andrew Brewer on 9/29/15.
//  Copyright © 2015 BrunoBrewerLLC. All rights reserved.
//
import Foundation
import UIKit

struct Quotes {
    
    let quotesArray = [
        
        "If somebody ever asks you to do something, do it really bad so you never have to do it again. -Paris Hilton",
        "I listen to The Wheels on the Bus goes Round and Round when I'm driving because I can relate to it",
        "AARRHHHHUNNNGH!!! - Chewbacca",
        "If the red river's a flowin, take the dirt road home",
        "The first time my boyfriend opened a box of Cheerios he thought they were a box of donut seeds",
        "I don't like it when people call me a dumb blonde. It gets on my pet peeves",
        "I didn't choose the thug life, the thug life chose me - Tupac",
        "The chances of it happening are rare, but a sharknado could actually happen -Tara Reid"
    ]
    
    var unusedQuotes = Set<Int>()
    
    mutating func randomQuote() -> String {
        if quotesArray.count == unusedQuotes.count {
            unusedQuotes = Set<Int>()
        }
        let randomNumber = getRandomNumber()
        
        return quotesArray[randomNumber]
    }
    
    
    mutating func getRandomNumber() -> Int {
        var randomNumber: Int?
        
        repeat {
        let unsignedArrayCount = UInt32(quotesArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        randomNumber = Int(unsignedRandomNumber)
        } while unusedQuotes.contains(randomNumber!)
        
        unusedQuotes.insert(randomNumber!)
        return randomNumber!
    }
    
}