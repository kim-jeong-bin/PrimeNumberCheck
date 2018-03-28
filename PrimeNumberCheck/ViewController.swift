//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by D7703_21 on 2018. 3. 28..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Count.delegate = self
    }
    @IBAction func Reset(_ sender: Any) {
        Count.text = ""
        Number.text = ""
    }
    
    @IBAction func Check(_ sender: Any) {
        let number = Int(Count.text!)
        var isPrime = true
        
        if number! == 1 {
            isPrime = false
        }
        
        if number! != 1 && number! != 2{
            for i in 2 ..< number!  {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime == true {
            Number.text = "Prime Number ^o^"
        } else {
            Number.text = "Not Prime Number ToT"
        }
    }
    
    @IBOutlet weak var Count: UITextField!
    
    @IBOutlet weak var Number: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool
     {
        Count.resignFirstResponder()
        return true
    }
    

}

