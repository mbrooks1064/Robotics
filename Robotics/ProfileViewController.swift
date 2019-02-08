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
    var bioArrayProfile: [String] = ["Bobby's cool team", "queer team 2", "3", "4", "5", "6", "7", "8", "9"]
    var robotNameProfile: [String] = ["Mini Bobby", "a'i", "4138kslkdfe", "oij23jrinkd", "weoinz", "apowijef", "';alkclel", "..z.e.e..e", "alseje",]
    var teamNamesProfile: [String] = ["Bobby's Boiz", "as;ofjd", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
    var teamMembersProfile: [String] = ["Bobby and others", "a'silfj", "as'lfij", "awefa", "asfdfc", "asdfwe", "123mvik", "asdijfoeij", "aiweojfmxsz"]
    var pictureOfRobotsProfile: [UIImage] = [#imageLiteral(resourceName: "RoboRumble"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "NoPicture")]
    var pickerSpot: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStuff(A: 0)
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
        bioText.text = bioArrayProfile[A]
        teamMembersLabel.text = teamMembersProfile[A]
        robotNameLabel.text = robotNameProfile[A]
        imageView.image = pictureOfRobotsProfile[A]
        pickerView.reloadAllComponents()
    }
    func openLinkLivestream() {
        let url = URL(string: "https://www.google.com/")!
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
