//
//  ViewController.swift
//  Robotics
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//[FIRDatabase Reference]

import UIKit
import Firebase

struct team{
    let school:String
    let wins:Int
    let loses:Int
}

class ViewController: UIViewController, UINavigationControllerDelegate {
    let teams = [team]
    @IBOutlet weak var demoLabel: UILabel!
    @IBOutlet weak var teamOne: UIButton!
    @IBOutlet weak var teamTwo: UIButton!
    @IBOutlet weak var teamThree: UIButton!
    @IBOutlet weak var teamFour: UIButton!
    @IBOutlet weak var teamFive: UIButton!
    @IBOutlet weak var teamSix: UIButton!
    @IBOutlet weak var teamSeven: UIButton!
    @IBOutlet weak var teamEight: UIButton!
    @IBOutlet weak var teamNine: UIButton!
//    var firstTimeOpened = true
    var initiatedSegue: String!
    var teamNumber: Int!
    var adminAccess = false
    var message: String = ""
    var alertTitle = "On Deck Next:"
    var ref: DatabaseReference!
    var bioArray: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let defaults = UserDefaults.standard
    var teams = [String]()
    var team = String()
    var numberOfTeams = 0
    
   
    {
        didSet
        {
                        self.defaults.set(teams, forKey: team)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true) {
//        let condition = teams[1]
//        let conditionRef = ref.child( "condition")
//        conditionRef.observe(DataEventType.value) { (snap:DataSnapshot) in
//            self.demoLabel.text = snap.value.debugDescription
//        }
//        if firstTimeOpened == true {
//            firstTimeOpened = false
//            teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
//        }
        if let saveData = defaults.object(forKey: team) as? [String] {
            teams = saveData
        }
        ref = Database.database().reference()
        ref.child("Robotics").queryOrderedByKey().observe(.childAdded, with: {DataSnapshot in
            
            let school = DataSnapshot.value(forKey:"school")
            let wins = DataSnapshot.value(forKey: "loses")
            let loses = DataSnapshot.value(forKey: "wins")
            
            
            self.teams.ins
            
            
        })
        
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
        
        navigationController?.delegate = self
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        postfix()
teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
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
    
    
    //
    ////        teams = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "Team 7", "Team 8", "Team 9"]
    //        teamOne.setTitle(teams[0],for: .normal)
    //        teamTwo.setTitle(teams[1],for: .normal)
    //        teamThree.setTitle(teams[2],for: .normal)
    //        teamFour.setTitle(teams[3],for: .normal)
    //        teamFive.setTitle(teams[4],for: .normal)
    //        teamSix.setTitle(teams[5],for: .normal)
    //        teamSeven.setTitle(teams[6],for: .normal)
    //        teamEight.setTitle(teams[7],for: .normal)
    //        teamNine.setTitle(teams[8],for: .normal)
    //
    //        navigationController?.delegate = self
    //
    //    }
    @IBAction func adminButton(_ sender: UIBarButtonItem) {
        if adminAccess == true {
            self.performSegue(withIdentifier: "toAdmin", sender: self)
            
        } else {
            alert()
            
        }
    }
    func alert() {
        let alert = UIAlertController(title: "Password?", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            let passwordTextField = alert.textFields![0] as UITextField
            let password = passwordTextField.text
            if password == "jj8735nxaffff" {
                self.performSegue(withIdentifier: "toAdmin", sender: self)
                self.adminAccess = true
            }
            
            
        }
        
        alert.addTextField { (textField) in
            
            textField.placeholder = "Password"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func teamOne(_ sender: UIButton) {
        initiatedSegue = teams[0]
        teamNumber = 1
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamTwo(_ sender: UIButton) {
        initiatedSegue = teams[1]
        teamNumber = 2
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamThree(_ sender: UIButton) {
        initiatedSegue = teams[2]
        teamNumber = 3
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamFour(_ sender: UIButton) {
        initiatedSegue = teams[3]
        teamNumber = 4
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamFive(_ sender: UIButton) {
        initiatedSegue = teams[4]
        teamNumber = 5
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamSix(_ sender: UIButton) {
        initiatedSegue = teams[5]
        teamNumber = 6
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamSeven(_ sender: UIButton) {
        initiatedSegue = teams[6]
        teamNumber = 7
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamEight(_ sender: UIButton) {
        initiatedSegue = teams[7]
        teamNumber = 8
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    @IBAction func teamNine(_ sender: UIButton) {
        initiatedSegue = teams[8]
        teamNumber = 9
        
        self.performSegue(withIdentifier: "segueFromBracket", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAdmin" {
            let n2vc = segue.destination as! AdminViewController
            n2vc.teamThatWasTapped = initiatedSegue
            n2vc.teamArray = teams
            n2vc.bioArrayAdmin = bioArray
            //            n2vc.receiveTeamNumber = teamNumber
        } else {
            let nvc = segue.destination as! ProfileViewController
            nvc.teamThatWasTapped = initiatedSegue
            nvc.teamArray = teams
            nvc.receiveTeamNumber = teamNumber
            nvc.bioArrayProfile = bioArray
            
        }
        
    }
    
    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) {}
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ref.child("condition").observe(.value) { (snap: DataSnapshot) in
            
        }
    }

}
