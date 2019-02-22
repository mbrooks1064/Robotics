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
    var bioArrayProfile: [String] = [ "", "Hard working, nerds", "Flagged for Content", "A guy who was bored, the bored guy's brother, a sophomore who was lazy, and their crazy creation", "", "7", "8", "9", "Three seniors who love robots and wanted to avenge last years bot Baby Ajax", "11", "Tall guy, short guy, Indian guy, Italian guy", "Weapon is a brake rotor", "We used to be a pneumatic bot, but now we're not", "Error 404 / wedge bot", "We are a wedgebot", "We have no idea what we are doing", "OOH! That's Gonna Sting!", "Likes to build bots", "Works hard and builds bots", "Yep we build bots too", "Oh Yeah", "'We built it in five weeks!' -Chris", "Awesome", "Drum bot", "Horizontal", "Sophomore all girls team", "6 boys and 1 girl", "One man crew from Fremd High School"]
    var robotNameProfile: [String] = ["Chopper", "Bowser Jr", "The Killer Stop Sign", "The Road Spike", "Trilobite", "Hurricane", "Scorpion", "Rhino", "Very Vicious Mechanical Fiend", "Full Send Squared", "Vertical Spinner", "Blood Bath", "No-Matics", "Error 404", "Wedgey the Wedgebot", "Tommunist Manifesto", "Bee Hive", "Susan", "O'Bearded One", "The Shock Bot", "Vector", "KOR", "Tiffany", "Hydeway to He**", "Hydal Wave", "Executor", "Cronos", "Valkyrie"]
    var teamNamesProfile: [String] = ["Chopper", "Mustangs", "Wild Pack", "The Polacy", "The Rayburns + 1", " Hurricane", "Scorpion", "Rhino", "Palatine Robotics", "All Brakes, No Gas", "The Guys", "Blood Bath", "P-Dawgs", "Error 404", "Cheese Wedge", "Tom's Team", "Bee Hive", "BG 2", "BG 1", "BG 3", "Vector", "Hoffman Estates", "Hoffman Estates", "Team 6", "Team 1", "Fremd Executor", "Cronos", "Slash"]
    var teamMembersProfile: [String] = ["Brian Sroka, Tristan Anderson, Jacob Gustafson, Mebin George, Nate Morgan", "Michal Wantuch, George Fousekis, Johnny O'Grady", "Daniel Sobas Eryk Kozuch", "Shane, Brian, and Kahan", "Sean Pandaleon, Trever Lundvick, Adam Chartouni", "Boris Jevtic, Michael Szydlo, Jack Ingemunson, Chris Paraskevopoulos, Quinn Robinson, Elliot Toljanic, Alex Lazes", "Matt Tanny, Renee Ramirez, Oscar Quintero, Jaquelin Z, Luis Vega , Martin Davis", "Jack Sroka, Joey Emmerson, Kaeleigh Wilson, Jeremy Arroyo, Jacob Knaack", "Malcolm Filichia, Grace Huff, Keely McEnery", "Filip Kopec, Mehul Shukla, Rohin Shah, Saul Tamayo, Kuba Ciepiela", "Brett, Logan, Aryan, Ben", "Bobby Tortorello, Tommie Malen, Kyle Evers, Connor Parks, James Makarski, Dominika Dynak, Naomi Popescu, Asia Ekiert, Daniel Beben", "Kaelyn, Dominic, Kacper, Jeremy, Aldin, Sebastian", "Leslie Garcia, William Savard , Jobin Chiramel, Markus Benson", "Alex Olson, Alex W., John, Bernard", "Tom Sehata, Tommy Youhn, Ryan Steffens, David Gora, Ryan Libiano", "Ashton F, Jack C, Jacob W, Kamil S", "Mikey Akmal", "Lauren, Anthony, David", "Luke and the squad", "Adam C, Sean P, Trevor L.", "Niko, Chris, Manas, Mahima, Marcelino, Muhammad, Swati, Brandon, Sean, Laura", "Vanessa", "Pantelis A, Brandon P, Robert S, Ryan F, Patrick D, Kris Y", "Dawn M, Blake J, Campbell B, Joel S, Brock N, Adam T, Nate B, Tyler H", "Megan, Eisha, Katie, Ania, and Evie", "Anika, Haroldas, Arvind, Vivek, Srihith, Matthew, Magnus", "Akash"]
//    var pictureOfRobotsProfile: [UIImage] = [ #imageLiteral(resourceName: "Team2"), #imageLiteral(resourceName: "Team3"), #imageLiteral(resourceName: "Team4"), #imageLiteral(resourceName: "Team5"), #imageLiteral(resourceName: "Team6"), #imageLiteral(resourceName: "Team7"), #imageLiteral(resourceName: "Team8"), #imageLiteral(resourceName: "Team9"), #imageLiteral(resourceName: "Team10"), #imageLiteral(resourceName: "Team11"), #imageLiteral(resourceName: "Team12"), #imageLiteral(resourceName: "Team13"), #imageLiteral(resourceName: "NoPicture"), #imageLiteral(resourceName: "Team 14"), #imageLiteral(resourceName: "Team15"), #imageLiteral(resourceName: "Team16"),  #imageLiteral(resourceName: "Team17"), #imageLiteral(resourceName: "Team 18"), #imageLiteral(resourceName: "Team 19"), #imageLiteral(resourceName: "Team20"), #imageLiteral(resourceName: "Team21"), #imageLiteral(resourceName: "Team 22"), #imageLiteral(resourceName: "Team9"), #imageLiteral(resourceName: "Team22"), #imageLiteral(resourceName: "Team24"), #imageLiteral(resourceName: "Team25"), #imageLiteral(resourceName: "Team26"), #imageLiteral(resourceName: "Team27")]
    var schoolNameTeamName: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
    
    var picks = [UIImage(named: "Team1"), UIImage(named: "Team2"), UIImage(named: "Team3"), UIImage(named: "Team4"), UIImage(named: "Team5"), UIImage(named: "Team6"), UIImage(named: "Team7"), UIImage(named: "Team8"), UIImage(named: "Team9"), UIImage(named: "Team10"), UIImage(named: "Team11"), UIImage(named: "Team12"), UIImage(named: "Team13"), UIImage(named: "Team1"),UIImage(named: "Team14"), UIImage(named: "Team15"), UIImage(named: "Team16"), UIImage(named: "Team17"), UIImage(named: "Team18"), UIImage(named: "Team19"), UIImage(named: "Team20"), UIImage(named: "Team21"), UIImage(named: "Team22"), UIImage(named: "Team23"), UIImage(named: "Team24"), UIImage(named: "Team25"), UIImage(named: "Team26"), UIImage(named: "Team27"),]
//    var pictureOfRobotsProfilFix: [UIImage] = [UIImage(cgImage: "Team1" as! CGImage), UIImage(cgImage: "Team2" as! CGImage), UIImage(cgImage: "Team3" as! CGImage), UIImage(cgImage: "Team4" as! CGImage), UIImage(cgImage: "Team5" as! CGImage), UIImage(cgImage: "Team6" as! CGImage), UIImage(cgImage: "Team7" as! CGImage), UIImage(cgImage: "Team8" as! CGImage), UIImage(cgImage: "Team9" as! CGImage), UIImage(cgImage: "Team10" as! CGImage), UIImage(cgImage: "RoboRumble" as! CGImage)]

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
//        imageView.image = pictureOfRobotsProfilFix[A]

        imageView.image = picks[A]
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
