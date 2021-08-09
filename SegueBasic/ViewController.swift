//
//  ViewController.swift
//  SegueBasic
//
//  Created by Alican Kurt on 7.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordText: UITextField!
    var password = ""
    
    // viewDidLoad function just work once while open page first time
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // View functions like going back this page
    override func viewWillDisappear(_ animated: Bool) {
        print("WilDisappear function called.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("DidDiseppear function called.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("WillAppear function called.")
        passwordText.text = ""
        passwordText.placeholder = "Password.."
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("DidAppear function called.")
    }
    
    ///
    
    
    
    
    
    
    
    @IBAction func goToSecondPageClick(_ sender: Any) {
        
        password = passwordText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    // send variable to other page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.password = password
        }
    }
    
    
}

