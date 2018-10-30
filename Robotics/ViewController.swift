//
//  ViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
            if password == "jj8735nxaffff" {
                self.performSegue(withIdentifier: "toAdmin", sender: self)
            }
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Password"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
}

