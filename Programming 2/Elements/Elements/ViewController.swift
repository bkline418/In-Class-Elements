
//
//  ViewController.swift
//  Elements
//
//  Created by Bandon Kline on 2/11/20.
//  Copyright © 2020 Bandon Kline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // All our outlets / elements created
    @IBOutlet weak var counterDisplay: UILabel!
    @IBOutlet weak var stepperInfo: UIStepper!
    @IBOutlet weak var slideInfo: UIView!
    @IBOutlet weak var puppyBuddy: UIImageView!
    @IBOutlet weak var hideSeek: UISegmentedControl!
    
    
    @IBAction func stepperAction(_ sender: Any) {
        counterDisplay.text = String(stepperInfo.value)
        slideInfo.value = Float(stepperInfo.value)
        changeColor()
    }
    
    
    @IBAction func slideAction(_ sender: Any) {
        counterDisplay.text = String(slideInfo.value)
        stepperInfo.value = Double(slideInfo.value)
    changeColor()
    }
    
    func changeColor() {
        if slideInfo.value > 50{
            counterDisplay.textColor = UIColor.red
        }
        else{
            counterDisplay.textColor = UIColor.blue

        }
    }
    
    
    @IBAction func hideSeek(_sender: Any){
        
        if hideSeek.selectedSegmentIndex == 0{
            puppyBuddy.isHidden = true
        }
        else{
            puppyBuddy.isHidden = false
        }
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

