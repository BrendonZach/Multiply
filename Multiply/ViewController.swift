//
//  ViewController.swift
//  Multiply
//
//  Created by Brendon Zach on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any)
    {
        //The ?? is an optional. It protects our data from user error. It will assign a default value that you provide at the right of the ??
        var firstNumber = number1.text ?? ""
        var secondNumber = number2.text ?? ""
        var number1int = Int(firstNumber) ?? 0
        var number2int = Int(secondNumber) ?? 0
        var multiplication = number1int * number2int
        answer.text = "\(multiplication)"
        
    
        
        
    }
    
}

