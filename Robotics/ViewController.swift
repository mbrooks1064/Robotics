//
//  ViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var adminAccess = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func adminButton(_ sender: UIBarButtonItem) {
    alert()
    }
    func alert() {
        let alert = UIAlertController(title: "Password?", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            let passwordTextField = alert.textFields![0] as UITextField
            let password = passwordTextField.text
            if self.adminAccess == true {
                self.performSegue(withIdentifier: "toAdmin", sender: self)
            } else {
             if password == "jj8735nxaffff" {
                self.performSegue(withIdentifier: "toAdmin", sender: self)
                self.adminAccess = true
            }
        }
        }
        alert.addTextField { (textField) in
            if self.adminAccess == true {
                textField.placeholder = "Just tap ok"
            } else {
            textField.placeholder = "Password"
            }
            }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func teamOne(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
    
    }
    @IBAction func teamTwo(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
    
    }
    @IBAction func teamThree(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
    
    }
    @IBAction func teamFour(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
   
    }
    @IBAction func teamFive(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamSix(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamSeven(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamEight(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamNine(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    
    
}
