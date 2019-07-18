//
//  ViewController.swift
//  Dice Roll
//
//  Created by Chou on 7/17/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var TotalMoney: UITextView!
    var showFirstImage: Bool = false
    var die = ["Dice Red 1","Dice Red 2", "Dice Red 3", "Dice Red 4","Dice Red 5", "Dice Red 6"]
    var die1 = ["Dice Blue 1","Dice Blue 2", "Dice Blue 3","Dice Blue 4","Dice Blue 5","Dice Blue 6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollDice(_ sender: Any) {
        let rndNum = Int.random(in: 0...5)
        let rndNum2 = Int.random(in:0...5)
        ImageView1.image = UIImage(named :die[rndNum])
        imageView2.image = UIImage(named :die1[rndNum2])
    }
    
    @IBAction func textButton(_ sender: UITextField) {
        weak var Total: UITextView!
        
    }
}

