//
//  ViewController.swift
//  Trivia
//
//  Created by Chou on 7/18/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions = ["What has holes but can hold water?", "What has three feet but no toes?", "What is tall when it is young and short when it is old?","Who makes it, has no need of it.Who buys it, has no use for it.Who uses it can neither see nor feel it.What is it?","What can travel around the world while staying in a corner?","What has hands but can not clap?","You can drop me from the tallest building and I'll be fine, but if you drop me in water I die. What am I?","What has a head and a tail, but no body?","What gets wetter and wetter the more it dries?","Paul's height is six feet, he's an assistant at a butcher's shop, and wears size 9 shoes. What does he weigh?",]
    var currQn = 0
    var awnsers = ["Sponge","Yard Stick","Candle","Coffin","Stamp","Clock","Paper","Clock","Coin","Towel","Meat"]
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    @IBOutlet weak var questionLabel: UITextView!
    @IBOutlet weak var userAnswerTextField:
    UITextField!
    @IBOutlet weak var validationLabel: UITextView!
    
    @IBOutlet weak var endOfGameMessageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currQn]
    }
    @IBAction func checkButtonClick(_ sender: Any) {
        if(userAnswerTextField.text == ""){
        validationLabel.text = "Please enter an answer."
        return
    }
    let userAnswer = userAnswerTextField.text
    let correctAnswer = awnsers[currQn]
    
        if(userAnswer!.caseInsensitiveCompare(correctAnswer) == .orderedSame){
            validationLabel.text = "Correct."
            score += 1
        }else{
            validationLabel.text="Incorrect. Correct answer is \(correctAnswer)"
            
        }
        currQn += 1
        if (currQn >= questions.count){
            if(score > questions.count / 2){
        endOfGameMessageLabel.text = "Well done. Good Game"
            }else{
                endOfGameMessageLabel.text = "Better Luck Next Time"
            }
                
        } else {
            questionLabel.text = questions[currQn]
        }
        userAnswerTextField.text = ""
        scoreLabel.text = "Score : \(String(score))"
        
        // Do any additional setup after loading the view.
    }


}
