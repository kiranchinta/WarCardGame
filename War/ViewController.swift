//
//  ViewController.swift
//  War
//
//  Created by Kiran Chinta on 5/11/16.
//  Copyright © 2016 Kiran Chinta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    
    @IBOutlet weak var playAroundButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    var playerScore:Int = 0
    
    var enemyScore:Int = 0
    
    
    var cardNameArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "king", "queen", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.playAroundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first imageview
        //let firstRandomNumber = arc4random_uniform(13) + 1
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        //let firstCardString:String = String(format: "card%i", firstRandomNumber)
        let firstCardString:String = self.cardNameArray[firstRandomNumber]
        
        // Randomize a number for the second imageview
        //let secondRandomNumber = arc4random_uniform(13) + 1
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        //let secondCardString:String = String(format: "card%i", secondRandomNumber)
        let secondCardString:String = self.cardNameArray[secondRandomNumber]
        
        // Set the cards image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine the higer card
        if firstRandomNumber > secondRandomNumber {
            // TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            // TODO: numbers are equal
        }
        else {
            // TODO: second card is larger
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
    }

}

