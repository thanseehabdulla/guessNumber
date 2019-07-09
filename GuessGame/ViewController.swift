//
//  ViewController.swift
//  GuessGame
//
//  Created by Abdulla Thanseeh on 7/9/19.
//  Copyright © 2019 Abdulla Thanseeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var numberGuess: UITextField!

    @IBOutlet weak var result: UILabel!
    
    @IBAction func onGuess(_ sender: Any) {
     let rollIt = String(arc4random_uniform(10))
        if numberGuess.text == rollIt {
            result.text = "You're right"
        }else{
            result.text = "You're Wrong! It was " + rollIt + "."
        }
 
    }
}

