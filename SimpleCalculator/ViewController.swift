//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by JUSTIN WEBER on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numOneTextFieldOutlet: UITextField!
    
    @IBOutlet weak var numTwoTextFieldOutlet: UITextField!
    
    @IBOutlet weak var operatorLabelOutlet: UILabel!
    
    @IBOutlet weak var resultLabelOutlet: UILabel!
    
    @IBOutlet weak var errorLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(_ sender: UIButton) {
        if Int(numOneTextFieldOutlet.text!) != nil && Int(numTwoTextFieldOutlet.text!) != nil{
            resultLabelOutlet.text = String(Int(numOneTextFieldOutlet.text!)! + Int(numTwoTextFieldOutlet.text!)!)
            
            operatorLabelOutlet.text = "+"
            errorLabelOutlet.text = ""
        }
        else{
            errorLabelOutlet.text = "Error!"
            
            numOneTextFieldOutlet.text = ""
            numTwoTextFieldOutlet.text = ""
            resultLabelOutlet.text = ""
            operatorLabelOutlet.text = ""
        }
    }
    
    @IBAction func subtractButton(_ sender: UIButton) {
        if Int(numOneTextFieldOutlet.text!) != nil && Int(numTwoTextFieldOutlet.text!) != nil{
            resultLabelOutlet.text = String(Int(numOneTextFieldOutlet.text!)! - Int(numTwoTextFieldOutlet.text!)!)
            
            operatorLabelOutlet.text = "-"
            errorLabelOutlet.text = ""
        }
        else{
            errorLabelOutlet.text = "Error!"
            
            numOneTextFieldOutlet.text = ""
            numTwoTextFieldOutlet.text = ""
            resultLabelOutlet.text = ""
            operatorLabelOutlet.text = ""
        }
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        if Int(numOneTextFieldOutlet.text!) != nil && Int(numTwoTextFieldOutlet.text!) != nil{
            resultLabelOutlet.text = String(Int(numOneTextFieldOutlet.text!)! * Int(numTwoTextFieldOutlet.text!)!)
            
            operatorLabelOutlet.text = "x"
            errorLabelOutlet.text = ""
        }
        else{
            errorLabelOutlet.text = "Error!"
            
            numOneTextFieldOutlet.text = ""
            numTwoTextFieldOutlet.text = ""
            resultLabelOutlet.text = ""
            operatorLabelOutlet.text = ""
        }
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        if Int(numOneTextFieldOutlet.text!) != nil && Int(numTwoTextFieldOutlet.text!) != nil{
            resultLabelOutlet.text = String(Double(numOneTextFieldOutlet.text!)! / Double(numTwoTextFieldOutlet.text!)!)
            
            operatorLabelOutlet.text = "÷"
            errorLabelOutlet.text = ""
        }
        else{
            errorLabelOutlet.text = "Error!"
            
            numOneTextFieldOutlet.text = ""
            numTwoTextFieldOutlet.text = ""
            resultLabelOutlet.text = ""
            operatorLabelOutlet.text = ""
        }
    }
}

