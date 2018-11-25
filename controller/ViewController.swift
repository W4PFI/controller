//
//  ViewController.swift
//  controller
//
//  Created by Patrick Fink on 11/25/18.
//  Copyright © 2018 Patrick Fink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var myLog: UITextView!
    @IBOutlet weak var myStatus: UILabel!
    @IBOutlet weak var myInput: UITextField!
   
    @IBAction func btnAdd(_ sender: Any) {
       add()
    }
    @IBAction func btnClear(_ sender: Any) {
        myInput.text = ""
        myLog.text = "Status Log"
    }
    
    func add() {
        myStatus.text = "Adding message..."
        myLog.text = String(myLog.text!) + "\n" + String(myInput.text!)
    }
    
    @IBAction func enter(_ sender: UITextField) {
        add()
    }
    
}

