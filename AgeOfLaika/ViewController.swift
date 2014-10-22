//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Michael Hari on 10/20/14.
//  Copyright (c) 2014 millionhari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var convertedToDogYears: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButton(sender: UIButton) {
        let dogMult = 7
        convertedToDogYears.text = "\(humanYears.text.toInt()!*dogMult)"
        convertedToDogYears.hidden = false
        humanYears.resignFirstResponder()
    }
    
    @IBAction func convertRealDogYearsButton(sender: UIButton) {
        let firstTwoYears = 10.5
        let afterTwoYears = 4
        var year = humanYears.text.toInt()!
        var converted:Double = 0.0
        
        if year<=2 {
            converted = Double(year) * firstTwoYears
        } else {
            converted = (2.0 * firstTwoYears) + Double((year-2)*afterTwoYears)
        }
        
        convertedToDogYears.text = "\(converted)"
        convertedToDogYears.hidden = false
        humanYears.resignFirstResponder()
    }
    


}

