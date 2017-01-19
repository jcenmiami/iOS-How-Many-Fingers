//
//  ViewController.swift
//  How Many Fingers
//
//  Created by JUAN RAMIREZ on 1/18/17.
//  Copyright © 2017 EZ IT Apps, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputAnswer: UITextField!
    
    
    @IBOutlet weak var outputAnswer: UILabel!
    
    
    
    @IBAction func submitAnswer(_ sender: Any) {
        
        let userInput: String?
        
        userInput = inputAnswer?.text
        
        let randomNumber: String?
        
        randomNumber = String(arc4random_uniform(6))
        
        if randomNumber == userInput {
            outputAnswer.text = "Yes the answer is " + randomNumber! + "!"
        } else {
            outputAnswer.text = "The correct answer is \(randomNumber!)!"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

