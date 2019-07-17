//
//  ViewController.swift
//  MyFirstSwiftApp(project)
//
//  Created by Chou on 7/15/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    var showFirstImage : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonClick(_ sender: Any) {

        if (showFirstImage == false){
            imageView1.image = UIImage(named: "Dice Red 1")
            showFirstImage = true
        } else {
            imageView1.image=UIImage(named: "Dice Red 2")
            showFirstImage = false
        }
    }
    
    
    
}

