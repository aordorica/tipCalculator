//
//  ViewController.swift
//  tipCalculator
//
//  Created by Alan Ordorica on 11/28/18.
//  Copyright © 2018 Alan Ordorica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var peopleCount: UILabel!
    @IBOutlet weak var individualBill: UILabel!
    
    
    var myNum = 1.0
    @IBAction func stepCounter(_ sender: UIStepper) {
        myNum = sender.value
    
        peopleCount.text = String(Int(myNum))
        
    }
    @IBOutlet weak var tipController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billText.text!) ?? 0
        let other = 0.10
        let tipPercent = [0.15, 0.2, 0.25, other]
        let tip = bill * tipPercent[tipController.selectedSegmentIndex]
        let total = bill + tip
        let individual = (total/myNum)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        individualBill.text = String(format: "$%.2f", individual)
    }
}

