//
//  ViewController.swift
//  Is it Prime
//
//  Created by Victor Elizalde on 1/3/17.
//  Copyright © 2017 Victor Elizalde. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            if let number = Int(userEnteredString) {
            
            var m = Int(ceil(sqrt(Double(number))))
            
            while m > 1 && m != number{
                
                if number % m == 0 {
                    
                    m = 0
                    resultLabel.text = "\(number) is not a prime number!"
                
                } else {
                
                    m -= 1
                
                }
            }
            
            if m != 0 {
                resultLabel.text = "\(number) is a prime number!"
            }

            } else {
            
                resultLabel.text = "Please enter a positive whole number"
            
            }
        
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

