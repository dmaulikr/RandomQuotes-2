//
//  ViewController.swift
//  quotes
//
//  Created by Andrew Brewer on 9/29/15.
//  Copyright © 2015 BrunoBrewerLLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomQuoteDisplay: UILabel!
    var timer = NSTimer()
    let colorWheel = ColorWheel()
    var randomQuote = Quotes()
    
    override func viewWillAppear(animated: Bool) {
        startQuoteRotation()
    }
    
    
    func startQuoteRotation() {
        randomQuoteDisplay.text = randomQuote.randomQuote()
        print(randomQuoteDisplay.text!)
        timer = NSTimer.scheduledTimerWithTimeInterval(4.0, target: self, selector: Selector("changeQuoteAndColor"), userInfo: nil, repeats: true)
    }
    
    func changeQuoteAndColor() {
        randomQuoteDisplay.textColor = colorWheel.randomColor()
        randomQuoteDisplay.text = randomQuote.randomQuote()
        print(randomQuoteDisplay.text!)
    }
}
