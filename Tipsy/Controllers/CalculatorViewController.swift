//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        var tipPercentage: Double
        if zeroPctButton.isSelected {
            tipPercentage = 1.0
        } else if tenPctButton.isSelected {
            tipPercentage = 1.1
        } else {
            tipPercentage = 1.2
        }
        
        let splitCheck = Double(splitNumberLabel.text!)
        let totalBill = Double(billTextField.text ?? "0.0")
        
        let eachPersonPays = String(format: "%.2f",((totalBill! * tipPercentage) / splitCheck!))
        
        print(eachPersonPays)
    }
    
}

