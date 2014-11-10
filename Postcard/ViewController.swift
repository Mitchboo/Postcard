//
//  ViewController.swift
//  Postcard
//
//  Created by Mitch on 11/5/14.
//  Copyright (c) 2014 Match Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var EnterNameTxtField: UITextField!
    
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPress(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor(red:1.0, green:0.0,blue:0.0,alpha:1.0)
//UIColor.redColor()
        //added comment
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

 