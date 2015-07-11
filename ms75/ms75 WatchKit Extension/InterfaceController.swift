//
//  InterfaceController.swift
//  ms75 WatchKit Extension
//
//  Created by Thoughtworker on 7/5/15.
//  Copyright (c) 2015 8BALL. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var answerArray:[String] = [
        "Always believe!",
        "Be true to yourself!!",
        "Caution advised.",
        "Definitely!",
        "Expect a surprise.",
        "Feel empowered!",
        "Go for it!",
        "Without a doubt!",
        "Trust your instincts!",
        "Maybe.",
        "Doubtful.",
        "Not likely."]
    
    
    
    
    @IBOutlet weak var answerLabel: WKInterfaceLabel!
    
    @IBAction func getAnswerButton() {
        //set number for random answer number
        
        var answerNumber:Int = self.answerArray.count
        
        var randomAnswerNumber:Int = Int(arc4random_uniform(12))
        
        //set answer string for random answer
        var randomAnwerString:String = self.answerArray[randomAnswerNumber]
        
        
        
        
        answerLabel.setText(randomAnwerString as String)
        buttonPressed.setTitle("ask")
    
    }
    
    @IBOutlet weak var buttonPressed: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
       println("working")
        println(answerArray.count)
 
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
