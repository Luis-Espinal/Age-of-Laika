//
//  ViewController.swift
//  Age of Laika
//
//  Created by Luis Espinal on 9/18/14.
//  Copyright (c) 2014 Luis Espinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var doggieNameLabel: UILabel!
    @IBOutlet weak var pressButtonLabel: UILabel!
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsHereTextField: UITextField!
    @IBOutlet weak var enterDoggieName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let stringFromTextField = enterHumanYearsHereTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears: Double
        var doggieName = enterDoggieName.text
        //Formula starts below
        if optionalDoubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else
            {
            realDogYears = optionalDoubleFromTextField * 10.5
            }
        
        pressButtonLabel.hidden = true
        dogYearsLabel.text = "\(doggieName) is \(realDogYears)" + " in human years!"
        enterHumanYearsHereTextField.resignFirstResponder()
        
        }

}
    

    



