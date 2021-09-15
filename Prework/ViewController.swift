//
//  ViewController.swift
//  Prework
//
//  Created by Mike Hanson on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var sliderPercent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateTotal(_ sender: Any) {
        let bill = Float(billAmountTextField.text!) ?? 0
        let tipPercentage = Float(sliderPercent.text!) ?? 0.2
        let tip = bill * tipPercentage
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }

    
    @IBAction func calculateTipSlider(_ sender: UISlider) {
        // Get bill amount from text field input
        let bill = Float(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentage =  sender.value
        let tip = bill * tipPercentage
        let total = bill + tip
        
        sliderPercent.text = String(format: "%.0f%%", sender.value * 100)
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

