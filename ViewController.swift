//
//  ViewController.swift
//  tips
//
//  Created by Samina Qazi on 8/24/15.
//  Copyright (c) 2015 Samina Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User edting bill")
        
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipPercentageSelected = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        // var billAmount = billField.text.toDouble()
        // var billAmount = billField.text.bridgeToObjectiveC().doubleValue
        var billAmount = NSString(string: billField.text).doubleValue
        // var tip = billAmount * 0.2
        var tip = billAmount * tipPercentageSelected
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

