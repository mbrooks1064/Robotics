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
    
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var bioText: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    var teamThatWasTapped: String! = ""
    var teamArray: [String] = [""]
    var bioArrayProfile: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var receiveTeamNumber = 0
  override func viewDidLoad() {
        super.viewDidLoad()
    print(teamThatWasTapped)
    pickerView.reloadAllComponents()
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamArray.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamArray[row]
    }
    
}
