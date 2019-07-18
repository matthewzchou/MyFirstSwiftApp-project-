//
//  secondDiceViewController.swift
//  Dice Roll
//
//  Created by Chou on 7/17/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit
var totalMoney = 1000
class secondDiceViewController: UIViewController {

    @IBOutlet weak var betTextField: UITextField!
    
    /*@IBOutlet weak var imageView1: UIImageView!
    var showfirstImage: Bool = false
    
    var dice = ["Red Die 1","Red Die 2","Red Die 3","Red Die 4","Red Die 5","Red Die 6"]
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    /*
    @IBAction func rollDie(_ sender: Any) {
        let rndNum = Int.random(in: 0...5)
        
        imageView1.image = UIImage(named : dice[rndNum])
    }*/
    
    
    @IBAction func betTextFieldEnter(_ sender: Any) {
        var bet = betTextField.text
        
    }
    @IBOutlet weak var totalMoney: UILabel!
    
    
}
