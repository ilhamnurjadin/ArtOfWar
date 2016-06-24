//
//  ViewController.swift
//  War
//
//  Created by Ilham Nurjadin on 6/23/16.
//  Copyright © 2016 IlhamNurjadin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        // Changing label of button
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: AnyObject) {
        // sender is a parameter that refers to the playRoundButton
        
        // Creating random numbes
        let firstRandomNumber = Int(arc4random_uniform(13))
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        // Creating random strings (cardname etc)
        
        /* // Method 1: Creating a Dynamic String
        let firstCardString = String(format: "card%i", firstRandomNumber)
        let secondCardString = String(format: "card%i", secondRandomNumber) */
        
        // Method 2: Using an Array of Names, and picking a random index
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        let secondCardString: String = self.cardNamesArray[secondRandomNumber]
        
        // Changing the image of the card imageView using random strings
        // when you do .image, you can see on the left hand side of the helper window the type that the function expects (in this case a UIImage)
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        print(firstRandomNumber)
        print(secondRandomNumber)
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            self.playerScore += 1
            self.playerScoreLabel.text = String(playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            // do nothing
        }
        else {  // secondRandomNumber < firstRandomNumber
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(enemyScore)
        }
        
    }

}

