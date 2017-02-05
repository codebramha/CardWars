//
//  ViewController.swift
//  CardWars
//
//  Created by harikanth on 11/30/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var dealButton: UIButton!
    
    
    
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king","ace"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dealButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButtonPressed(_ sender: Any) {
     
        
        //randomize the left number
        let leftNum = Int(arc4random_uniform(13))
        
        leftCardView.image = UIImage(named: cardNames[leftNum])
        
        let rightNum = Int(arc4random_uniform(13))
        rightCardView.image = UIImage(named: cardNames[rightNum])
        
        if leftNum > rightNum {
            //cpu wins
            leftScore+=1
            cpuScoreLabel.text = String(leftScore)
        
        } else if leftNum == rightNum{
            //its a tie
            
            
        } else{
            //player wins
            rightScore += 1
            playerScoreLabel.text = String(rightScore)
        }
        
    }

}

