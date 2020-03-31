//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
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
        
        // Who.what = value;
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        
        //Use alpha to set Opacity
        diceImageView1.alpha = 0.5
        
        diceImageView2.image = #imageLiteral (resourceName: "DiceThree")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button Got Tapped");
        
        diceImageView1.alpha = 1
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
        
    }
    
}

