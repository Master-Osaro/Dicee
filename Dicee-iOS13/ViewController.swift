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
       
        //leftDiceNumber Condition - Want to avoid an Array out of bounds error so we make sure dice number is within the Array bound during incrment before using, if not reset it.
//        if (leftDiceNumber<=4) {
//            leftDiceNumber = leftDiceNumber + 1;
//        } else {
//            leftDiceNumber = 0
//        }
//
//        if (rightDiceNumber>0) {
//            rightDiceNumber = rightDiceNumber - 1;
//        } else {
//            rightDiceNumber = 5
//        }
        
        let diceArray =  [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        //Now using random numbers so no need for proceedural increments and checks as above
        
        //var is for defining variables and let is for constants (Hehe...Sorry this aint JS ES6)
        //There's also diceArray.randomElement() for viewing random components in an array
        
        //Int.random(in: 0...5) - ... is called a closed range oprator, where values are inclusive of the upper bound, want upper bound exclusive? use ..<
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rightDiceNumber]
    }
    
}

