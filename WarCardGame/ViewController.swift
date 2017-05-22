//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nikole Kaufmann on 1/4/17.
//  Copyright © 2017 NikoleKaufmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    let cardNames = ["card2", "card3","card4","card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    var leftScore = 0;
    var rightScore=0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
       
        //Randomize left number from 2 to 10
        let leftNumber = Int(arc4random_uniform(13))
        
        //Randomize right number
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //Set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber{
            //left card wins
            leftScore += 1
            
            //update Label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            //tie
        }
        else{
            //right card wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
        
        
    }
    

}

