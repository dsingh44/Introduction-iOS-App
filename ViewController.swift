//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Davinder Singh on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morepetsstepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolnameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet var numberofPetsLabel: UILabel!
 
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberofPetsLabel.text = "\(Int(sender.value))"
    }

    @IBAction func introduceSelfDidTapped( _sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolnameTextField.text!). I am currently in my \(year!) year and I own \(numberofPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets!"
        
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
   



}

