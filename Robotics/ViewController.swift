////
////  ViewController.swift
////  Robotics
////
////  Created by period3 on 10/29/18.
////  Copyright © 2018 period3. All rights reserved.
////[FIRDatabase Reference]
//
//import UIKit
//import UserNotifications
//import Messages
//import SafariServices
//
////struct team{
////    let school:String
////    let wins:Int
////    let loses:Int
////}
//
//class ViewController: UIViewController, UINavigationControllerDelegate, SFSafariViewControllerDelegate, UITabBarDelegate {
//    @IBOutlet weak var teamProfileBracketItem: UITabBarItem!
//    @IBOutlet weak var livestreamBracketItem: UITabBarItem!
//    @IBOutlet weak var bracketTabItem: UITabBarItem!
//    @IBOutlet weak var tabBarOutlet: UITabBar!
//    @IBOutlet weak var demoLabel: UILabel!
//    var teamNumber: Int!
//    var adminAccess = false
//    var message: String = ""
//    var alertTitle = "On Deck Next:"
//    var ref: DatabaseReference!
//    var bioArray: [String] = ["Bobby's cool team", "queer team 2", "3", "4", "5", "6", "7", "8", "9"]
//    var robotName: [String] = ["Mini Bobby", "a'i", "4138kslkdfe", "oij23jrinkd", "weoinz", "apowijef", "';alkclel", "..z.e.e..e", "alseje",]
//    var teamNames: [String] = ["Bobby's Boiz", "as;ofjd", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
//    var teamMembers: [String] = ["Bobby and others", "a'silfj", "as'lfij", "awefa", "asfdfc", "asdfwe", "123mvik", "asdijfoeij", "aiweojfmxsz"]
//    var pictureOfRobots: [UIImage] = [#imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture")]
//    let defaults = UserDefaults.standard
//    var tabItem = UITabBarItem()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        postfix()
////        openLinkLivestream()
//        self.performSegue(withIdentifier: "toProfiles", sender: self)
//        tabBarOutlet.selectedItem = teamProfileBracketItem
//
//    }
//    func openLinkLivestream() {
//        let url = URL(string: "https://www.google.com/")!
////        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
//        let vc = SFSafariViewController(url: url)
//        vc.delegate = self
//        present(vc, animated: true)
//        tabBarOutlet.isHidden = false
//        view.bringSubview(toFront: tabBarOutlet)
//    }
//    func openLinkBracket() {
//        let url = URL(string: "https://www.google.com/")!
//        //        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
//        let vc = SFSafariViewController(url: url)
//        vc.delegate = self
//        present(vc, animated: true)
//    }
//    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        if item.title == "Team Profiles" {
//            self.performSegue(withIdentifier: "toProfiles", sender: self)
//        } else if item.title == "Livestream" {
//            openLinkLivestream()
//        } else {
//            openLinkBracket()
//        }
//    }
////    @IBAction func adminButton(_ sender: UIBarButtonItem) {
////        if adminAccess == true {
////            self.performSegue(withIdentifier: "toAdmin", sender: self)
////
////        } else {
////            alert()
////
////        }
////    }
////    func alert() {
////        let alert = UIAlertController(title: "Password?", message: "", preferredStyle: .alert)
////        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
////            let passwordTextField = alert.textFields![0] as UITextField
////            let password = passwordTextField.text
////            if password == "jj8735nxaffff" {
////                self.performSegue(withIdentifier: "toAdmin", sender: self)
////                self.adminAccess = true
////            }
////
////
////        }
////
////        alert.addTextField { (textField) in
////
////            textField.placeholder = "Password"
////
////        }
////        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
////        alert.addAction(okAction)
////        alert.addAction(cancelAction)
////        present(alert, animated: true, completion: nil)
////    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        if segue.identifier == "toAdmin" {
////            let n2vc = segue.destination as! AdminViewController
////            n2vc.teamThatWasTapped = initiatedSegue
////            n2vc.teamArray = teams
////            n2vc.bioArrayAdmin = bioArray
////            //            n2vc.receiveTeamNumber = teamNumber
////        } else {
////            let nvc = segue.destination as! ProfileViewController
////        nvc.bioArrayProfile = bioArray
////        nvc.teamNamesProfile = teamNames
////        nvc.robotNameProfile = robotName
////        nvc.teamMembersProfile = teamMembers
////        nvc.pictureOfRobotsProfile = pictureOfRobots
////        }
//
//    }
//
//    @IBAction func toProfileButton(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "segueFromBracket", sender: nil)
//    }
//    @IBAction func toLiveStream(_ sender: UIButton) {
//    }
//    @IBAction func toBracket(_ sender: UIButton) {
//    }
//
////    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) {}
////    override func viewDidAppear(_ animated: Bool) {
////        super.viewDidAppear(animated)
////
////    }
//}
