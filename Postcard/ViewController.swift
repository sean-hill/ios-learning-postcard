//
//  ViewController.swift
//  Postcard
//
//  Created by Sean Hill on 9/19/14.
//  Copyright (c) 2014 Sean Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.text = "To: " + enterNameTextField.text + "\nMessage: " + enterMessageTextField.text
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder();
        
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

    @IBAction func enterMessagePressed(sender: UITextField) {
        resetMailForm()
    }
    
    @IBAction func enterNamePressed(sender: UITextField) {
        resetMailForm()
    }
    
    func resetMailForm() {
        
        if (!messageLabel.hidden) {
        
            mailButton.setTitle("Send Mail", forState: UIControlState.Normal)
            messageLabel.hidden = true
            
        }
        
    }
}

