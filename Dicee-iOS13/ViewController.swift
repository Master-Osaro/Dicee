//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Osaro Iyoha on 31/03/2020.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet -(InterfaceBuilderOutlet) allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    //viewDidLoad() func handles what happens when the app loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button Got Tapped");
        //Use alpha to set Opacity
//        diceImageView1.alpha = 1
        // Who.what = value;
//        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
        //rightDiceNumber Condition
       
        //leftDiceNumber Condition - Want to avoid an Array out of bounds error so we make sure dice number is within the Array bound  before using, if not reset it.
        if (leftDiceNumber<=4) {
            leftDiceNumber = leftDiceNumber + 1;
        } else {
            leftDiceNumber = 0
        }
        
        if (rightDiceNumber>0) {
            rightDiceNumber = rightDiceNumber - 1;
        } else {
            rightDiceNumber = 5
        }
        
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
        
        
    }
    
}

