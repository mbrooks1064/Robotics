//
//  ProfileViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit
import SafariServices

class ProfileViewController: UIViewController, UINavigationControllerDelegate, SFSafariViewControllerDelegate, UITabBarDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var tabBarOutlet: UITabBar!
    @IBOutlet weak var livestreamBarItem: UITabBarItem!
    @IBOutlet weak var bracketBarItem: UITabBarItem!
    @IBOutlet weak var robotNameLabel: UILabel!
    @IBOutlet weak var teamMembersLabel: UILabel!
    @IBOutlet weak var bioText: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    var bioArrayProfile: [String] = ["Bobby's cool team", "", "Hard working, nerds", "Flagged for Content", "A guy who was bored, the bored guy's brother, a sophomore who was lazy, and their crazy creation", "", "7", "8", "9", "Three seniors who love robots and wanted to avenge last years bot Baby Ajax", "11", "12", "13"]
    var robotNameProfile: [String] = ["Mini Bobby", "Chopper", "Bowser Jr", "The Killer Stop Sign", "The Road Spike", "Trilobite", "Hurricane", "Scorpion", "Rhino", "Very Vicious Mechanical Fiend", "11", "12", "13"]
    var teamNamesProfile: [String] = ["Bobby's Boiz", "Mustangs", "Wild Pack", "The Polacy", "The Rayburns + 1", "Team 6", "Team 7", "Team 8", "Team 9", "Palatine Robotics", "11", "12", "13", "14"]
    var teamMembersProfile: [String] = ["Bobby and others", "Brian Sroka, Tristan Anderson, Jacob Gustafson, Mebin George, Nate Morgan", "Michal Wantuch, George Fousekis, Johnny O'Grady", "Daniel Sobas Eryk Kozuch", "Shane, Brian, and Kahan", "Sean Pandaleon, Trever Lundvick, Adam Chartouni", "Boris Jevtic, Michael Szydlo, Jack Ingemunson, Chris Paraskevopoulos, Quinn Robinson, Elliot Toljanic, Alex Lazes", "Matt Tanny, Renee Ramirez, Oscar Quintero, Jaquelin Z, Luis Vega , Martin Davis", "Jack Sroka, Joey Emmerson, Kaeleigh Wilson, Jeremy Arroyo, Jacob Knaack", "Malcolm Filichia, Grace Huff, Keely McEnery", "11", "12", "13", "14"]
    var pictureOfRobotsProfile: [UIImage] = [#imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "Team2"), #imageLiteral(resourceName: "Team3"), #imageLiteral(resourceName: "Team4"), #imageLiteral(resourceName: "Team5"), #imageLiteral(resourceName: "Team6"), #imageLiteral(resourceName: "Team7"), #imageLiteral(resourceName: "Team8"), #imageLiteral(resourceName: "Team9"), #imageLiteral(resourceName: "Team10"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "RoboRumble")]
    var schoolNameTeamName: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
//    var pictureOfRobotsProfilFix: [UIImage] = [image("Team1"),]

    var pickerSpot: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStuff(A: 0)
        var tabFrame = self.tabBarOutlet.frame
        // - 40 is editable , the default value is 49 px, below lowers the tabbar and above increases the tab bar size
        tabFrame.size.height = 70
//        tabFrame.origin.y = self.view.frame.size.height - 40
        self.tabBarOutlet.frame = tabFrame
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updateStuff(A: row)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
//        self.pickerView.reloadAllComponents()
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamNamesProfile.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let selectedTeam = teamNamesProfile[row]
        return selectedTeam
    }
    
    func updateStuff(A: Int) {
        bioText.allowsEditingTextAttributes = false
        pickerSpot = pickerView.selectedRow(inComponent: 0)
//        if biotext == "Flagged for Content" {
//            bioText.text = bioArrayProfile[A]
//            bioText.textColor = #colorLiteral(red: 1, green: 0.06974860209, blue: 0, alpha: 1)
//        } else {
            bioText.text = bioArrayProfile[A]
//        }
        teamMembersLabel.text = teamMembersProfile[A]
        robotNameLabel.text = robotNameProfile[A]
    
        imageView.image = pictureOfRobotsProfile[A]
        pickerView.reloadAllComponents()
    }
    func openLinkLivestream() {
        let url = URL(string: "https://www.youtube.com/watch?v=MuWssKF0zmU")!
        //        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        let vc = SFSafariViewController(url: url)
        vc.delegate = self as! SFSafariViewControllerDelegate
        present(vc, animated: true)
        tabBarOutlet.isHidden = false
        view.bringSubview(toFront: tabBarOutlet)
    }
    func openLinkBracket() {
        let url = URL(string: "https://www.google.com/")!
        //        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        let vc = SFSafariViewController(url: url)
        vc.delegate = self as! SFSafariViewControllerDelegate
        present(vc, animated: true)
    }
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        if item.title == "Team Profiles" {
//            self.performSegue(withIdentifier: "toProfiles", sender: self)
//        } else
    if item.title == "Livestream" {
            openLinkLivestream()
        }
    if item.title == "Bracket" {
            openLinkBracket()
        }
    }
}
