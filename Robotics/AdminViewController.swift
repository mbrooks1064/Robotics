//
//  AdminViewController.swift
//  Robotics
//
//  Created by period3 on 11/2/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class AdminViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var bioBox: UITextView!
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var imagePicker: UIPickerView!
    var teamThatWasTapped: String! = ""
    var teamArray: [String] = [""]
    var bioArrayAdmin: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var pickerSpot: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.reloadAllComponents()
    }

    @IBAction func enterButton(_ sender: UIButton) {
//        pickerSpot = imagePicker.selectedRow(inComponent: )
        pickerSpot = imagePicker.selectedRow(inComponent: 0)
        teamArray.remove(at: pickerSpot)
        teamArray.insert(teamNameTextField.text!, at: pickerSpot)
        imagePicker.reloadAllComponents()
        bioArrayAdmin.remove(at: pickerSpot)
        bioArrayAdmin.insert(bioBox.text!, at: pickerSpot)
        

    }
    @IBAction func pickerSwiperThing(_ sender: UITapGestureRecognizer) {
        updateBox()
        
    }
    func updateBox() {
        pickerSpot = imagePicker.selectedRow(inComponent: 0)

        bioBox.text = bioArrayAdmin[pickerSpot]
        bioBox.reloadInputViews()
        
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.teams = teamArray
        vc.bioArray = bioArrayAdmin
        print(vc.teams)
        print(vc.bioArray)
    }
    
}
