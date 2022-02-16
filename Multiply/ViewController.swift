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
    
    @IBOutlet weak var Funky: UIImageView!
    
    @IBOutlet weak var Blue: UIImageView!
    
    @IBOutlet weak var Red: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Blue.isHidden = true
        Red.isHidden = true
    }

    @IBAction func calculateButton(_ sender: Any)
    {
        //The ?? is an optional. It protects our data from user error. It will assign a default value that you provide at the right of the ??
        var firstNumber = number1.text ?? ""
        var secondNumber = number2.text ?? ""
        Funky.isHidden = true
        var number1int = Int(firstNumber) ?? 0
        var number2int = Int(secondNumber) ?? 0
        var multiplication = number1int * number2int
        answer.text = "\(multiplication)"
        //This is the first stretch witch dismisses the keyboard using the resignFirstResponder on the text fields. 
    
        number1.resignFirstResponder()
        number2.resignFirstResponder()
     
        //Stretch 2 & 3
        
        var mod = multiplication % 2
        
        if multiplication == 64
        {
            Funky.isHidden = false
            
        }
        
        if mod == 0
        {
            Blue.image = UIImage(named: "225px-Solid_blue.svg")
            Red.image = UIImage(named: "download")
            
            Blue.isHidden = false
            Red.isHidden = true
            
        }
        else
        {
            
            
            Blue.isHidden = true
            Red.isHidden = false
            
            
        }
        
    }
        
}

