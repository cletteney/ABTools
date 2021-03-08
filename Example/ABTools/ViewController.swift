//
//  ViewController.swift
//  ABTools
//
//  Created by Chase Letteney on 03/08/2021.
//  Copyright (c) 2021 Chase Letteney. All rights reserved.
//

import UIKit
import ABTools



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let message = AlertMessage(title: "Test", message: "This is a test!")
        self.alert(alertMessage: message, style: .alert, actions: [], withCancel: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

