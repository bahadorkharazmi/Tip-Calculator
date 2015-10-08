//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Bahador Kharzami - Vendor on 10/5/15.
//  Copyright © 2015 Bahador Kharzami - Vendor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        let billValueString = billField.text!
        
        
        if billValueString != "" {
            let billValue = Float(billValueString)
            let tipValues = [15,18,20] as [Float];
        
            let index = tipSegment.selectedSegmentIndex
        
            let tip = tipValues[index];
        
            let amount = ((tip * billValue!)/100) + billValue!
        
            amountLabel.text = "$\(amount)"
        } else {
             amountLabel.text = "$0.00"
        }
    }
    
    
    
    @IBAction func percentChanged(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.placeholder = "0.00"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

