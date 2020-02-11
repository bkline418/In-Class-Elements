//
//  ViewController.swift
//  In Class Storyboard
//
//  Created by Bandon Kline on 2/4/20.
//  Copyright © 2020 Bandon Kline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var madLib : String = "My name is Space Cadet and it is nice to meet you, <name>. Since we are pals, I'll call you <nickName>. It must have been such a long trek to get here from <homeGalaxy>, but it seems as tho you had a <enterAdjective> ride in you <favCar>tron."
    
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var nickName: UITextField!
    @IBOutlet weak var homeGalaxy: UITextField!
    @IBOutlet weak var favCar: UITextField!
    @IBOutlet weak var enterAdjective: UITextField!
    

        @IBAction func pressButt(_ sender: Any) {
           
            enterName.text = madLib.replacingOccurrences(of: "<enterName>", with: enterName.text!)
             nickName.text = madLib.replacingOccurrences(of: "<nickName>", with: nickName.text!)
             homeGalaxy.text = madLib.replacingOccurrences(of: "<homeGalaxy>", with: homeGalaxy.text!)
             favCar.text = madLib.replacingOccurrences(of:  "<favCar>", with: favCar.text!)
             enterAdjective.text = madLib.replacingOccurrences(of: "<enterAdjective>", with: enterAdjective.text!)
            
             
       // outputText.text = inputText.text
        //outputText.text = nameField.replacingOccurrences(of:
         //   "<name>", with: inputText.text!)
        //Note that you would need inputFIeld.text.replacingOccurrences(...) to copy from a specified text field instead of just variable components
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}

