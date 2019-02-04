//
//  ProfileViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit
import Firebase


class ProfileViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var robotNameLabel: UILabel!
    @IBOutlet weak var teamMembersLabel: UILabel!
    @IBOutlet weak var bioText: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    var teamArrayProfile: [String] = ["", "", "", "", "", "", "", "", ""]
    var bioArrayProfile: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var teamMembersProfile: [String] = ["", "", "", "", "", "", "", "", ""]
    var robotNameProfile: [String] = ["", "", "", "", "", "", "", "", "",]
    var pictureOfRobotsProfile: [UIImage] = [#imageLiteral(resourceName: "RoboRumble")]
    var receiveTeamNumber = 0
    var bioBox1 = ""
    var pickerSpot: Int = 0
    var pickerSpot2: Int = 0
  override func viewDidLoad() {
        super.viewDidLoad()
    pickerView.reloadAllComponents()
    bioText.allowsEditingTextAttributes = false
    pickerSpot = pickerView.selectedRow(inComponent: 0)
    bioText.text = bioArrayProfile[pickerSpot]
    teamMembersLabel.text = teamMembersProfile[pickerSpot]
    imageView.image = pictureOfRobotsProfile[pickerSpot]
    robotNameLabel.text = robotNameProfile[pickerSpot]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamArrayProfile.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamArrayProfile[row]
    }
    
}
