//
//  SecondViewController.swift
//  SegueBasic
//
//  Created by Alican Kurt on 7.08.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var passwordLabel: UILabel!
    var password = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordLabel.text = password
        
    }
    

  

}
