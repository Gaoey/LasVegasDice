//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let first = Int.random(in: 1..<6)
        let second = Int.random(in: 1..<6)
        
        diceImageView1.image = getDice(a: first)
        diceImageView2.image = getDice(a: second)
    }
    
    
    func getDice(a: Int) -> UIImage{
        switch a {
        case 1:
            return #imageLiteral(resourceName: "DiceOne")
        case 2:
            return #imageLiteral(resourceName: "DiceTwo")
        case 3:
            return #imageLiteral(resourceName: "DiceThree")
        case 4:
            return #imageLiteral(resourceName: "DiceFour")
        case 5:
            return #imageLiteral(resourceName: "DiceFive")
        default:
            return #imageLiteral(resourceName: "DiceSix")
        }
    }
}

