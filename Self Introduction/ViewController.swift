//
//  ViewController.swift
//  Self Introduction
//
//  Created by Minh Huynh on 1/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var schoolNameTF: UITextField!
    @IBOutlet weak var petStepper: UISegmentedControl!
    @IBOutlet weak var morePetSwitch: UISwitch!
    @IBOutlet weak var numPetsLabel: UILabel!
    @IBOutlet weak var acedemicYearSegment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func introduceDidTap(_ sender: UIButton) {
        let year = acedemicYearSegment.titleForSegment(at: acedemicYearSegment.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTF.text!) \(lastNameTF.text!) and I attend \(schoolNameTF.text!). I am currently in my \(year!) year and I own \(numPetsLabel.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets."
                
        let alertController = UIAlertController(title: "Introduction", message: introduction, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Dismiss", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
        
        
    }
}

