//
//  ViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var teamOne: UIButton!
    @IBOutlet weak var teamTwo: UIButton!
    @IBOutlet weak var teamThree: UIButton!
    @IBOutlet weak var teamFour: UIButton!
    @IBOutlet weak var teamFive: UIButton!
    @IBOutlet weak var teamSix: UIButton!
    @IBOutlet weak var teamSeven: UIButton!
    @IBOutlet weak var teamEight: UIButton!
    @IBOutlet weak var teamNine: UIButton!
    var adminAccess = false
    var teams: [String] = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
        teamOne.titleLabel?.text = teams[0]
        teamTwo.titleLabel?.text = teams[1]
        teamThree.titleLabel?.text = teams[2]
        teamFour.titleLabel?.text = teams[3]
        teamFive.titleLabel?.text = teams[4]
        teamSix.titleLabel?.text = teams[5]
        teamSeven.titleLabel?.text = teams[6]
        teamEight.titleLabel?.text = teams[7]
        teamNine.titleLabel?.text = teams[8]
        print(teamNine.titleLabel?.text)
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
