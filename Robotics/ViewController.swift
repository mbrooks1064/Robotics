//
//  ViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//[FIRDatabase Reference]

import UIKit
import Firebase
import UserNotifications
import Messages
import SafariServices

//struct team{
//    let school:String
//    let wins:Int
//    let loses:Int
//}

class ViewController: UIViewController, UINavigationControllerDelegate, SFSafariViewControllerDelegate, UITabBarDelegate {
    @IBOutlet weak var tabBarOutlet: UITabBar!
    @IBOutlet weak var demoLabel: UILabel!
    var teamNumber: Int!
    var adminAccess = false
    var message: String = ""
    var alertTitle = "On Deck Next:"
    var ref: DatabaseReference!
    var bioArray: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var robotName: [String] = ["", "", "", "", "", "", "", "", "",]
    let defaults = UserDefaults.standard
    var teams = [String]()
    var team = String()
    var numberOfTeams = 0
    var pickerSpot: Int = 0
//    var tabBarItem = UITabBarItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        postfix()
        teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
        openLink()
    }
    func openLink() {
        let url = URL(string: "https://www.google.com/")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    func postfix()
    {
        let school = "School"
        let loses = "Loses"
        let wins = "Wins"
        let  team: [String : AnyObject] = ["school":school as AnyObject,"loses":loses as AnyObject,"wins":wins as AnyObject]
        let databaseRef = Database.database().reference()
        databaseRef.child("Robotics").childByAutoId().setValue(team)
    }

//    @IBAction func adminButton(_ sender: UIBarButtonItem) {
//        if adminAccess == true {
//            self.performSegue(withIdentifier: "toAdmin", sender: self)
//
//        } else {
//            alert()
//
//        }
//    }
//    func alert() {
//        let alert = UIAlertController(title: "Password?", message: "", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
//            let passwordTextField = alert.textFields![0] as UITextField
//            let password = passwordTextField.text
//            if password == "jj8735nxaffff" {
//                self.performSegue(withIdentifier: "toAdmin", sender: self)
//                self.adminAccess = true
//            }
//
//
//        }
//
//        alert.addTextField { (textField) in
//
//            textField.placeholder = "Password"
//
//        }
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        alert.addAction(okAction)
//        alert.addAction(cancelAction)
//        present(alert, animated: true, completion: nil)
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toAdmin" {
//            let n2vc = segue.destination as! AdminViewController
//            n2vc.teamThatWasTapped = initiatedSegue
//            n2vc.teamArray = teams
//            n2vc.bioArrayAdmin = bioArray
//            //            n2vc.receiveTeamNumber = teamNumber
//        } else {
            let nvc = segue.destination as! ProfileViewController
            nvc.teamArray = teams
            nvc.bioArrayProfile = bioArray
            nvc.pickerSpot = pickerSpot

//        }

    }

    @IBAction func toProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueFromBracket", sender: nil)
    }
    @IBAction func toLiveStream(_ sender: UIButton) {
    }
    @IBAction func toBracket(_ sender: UIButton) {
    }

//    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) {}
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//    }
}
