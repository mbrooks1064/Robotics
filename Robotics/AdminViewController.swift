//
//  AdminViewController.swift
//  Robotics
//
//  Created by period3 on 11/2/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class AdminViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var imagePicker: UIPickerView!
    var teamThatWasTapped: String! = ""
    var teamArray: [String] = [""]
    var pickerSpot: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func enterButton(_ sender: UIButton) {
//        pickerSpot = imagePicker.selectedRow(inComponent: )
        
        imagePicker.reloadAllComponents()
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
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let nvc = unwindSegue.destination as! ViewController
        nvc.teams = teamArray
    }
}
