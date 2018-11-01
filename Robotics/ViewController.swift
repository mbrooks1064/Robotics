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
    var initiatedSegue: String!
    var adminAccess = false
    var teams: [String] = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
        teamOne.setTitle(teams[0],for: .normal)
        teamTwo.setTitle(teams[1],for: .normal)
        teamThree.setTitle(teams[2],for: .normal)
        teamFour.setTitle(teams[3],for: .normal)
        teamFive.setTitle(teams[4],for: .normal)
        teamSix.setTitle(teams[5],for: .normal)
        teamSeven.setTitle(teams[6],for: .normal)
        teamEight.setTitle(teams[7],for: .normal)
        teamNine.setTitle(teams[8],for: .normal)
        
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
        initiatedSegue = teams[0]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamTwo(_ sender: UIButton) {
        initiatedSegue = teams[1]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamThree(_ sender: UIButton) {
        initiatedSegue = teams[2]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamFour(_ sender: UIButton) {
        initiatedSegue = teams[3]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamFive(_ sender: UIButton) {
        initiatedSegue = teams[4]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamSix(_ sender: UIButton) {
        initiatedSegue = teams[5]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamSeven(_ sender: UIButton) {
        initiatedSegue = teams[6]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamEight(_ sender: UIButton) {
        initiatedSegue = teams[7]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    @IBAction func teamNine(_ sender: UIButton) {
        initiatedSegue = teams[8]
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ProfileViewController
        nvc.teamThatWasTapped = initiatedSegue
        nvc.teamArray = teams
    }
    
}
