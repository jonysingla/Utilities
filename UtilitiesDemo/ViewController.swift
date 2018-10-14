//
//  ViewController.swift
//  UtilitiesDemo
//
//  Created by PanshulK on 26/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Utilities.showAlert(title: <#T##String#>, with: <#T##String#>, style: <#T##UIAlertControllerStyle#>, onView: <#T##AnyObject#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

