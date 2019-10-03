//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by Wade Sellers on 4/15/17.
//  Copyright © 2017 MobileMakersEDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var finalExamWeightTextField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    var neededFinalExamGrade:Double?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
       
        let desiredGrade = Double(desiredGradeTextField.text!)!
        let currentGrade = Double(currentGradeTextField.text!)!
        let finalExamWeight = Double(finalExamWeightTextField.text!)!
        
        let neededFinalExamGrade = (100 * desiredGrade - (100 - finalExamWeight) * currentGrade) / finalExamWeight
        print(neededFinalExamGrade)
        
        if neededFinalExamGrade > 100 {
            resultsLabel.text = "Grade needed on final exam to achieve your desired class grade... You should ask your teacher for extra credit opportunities."
            view.backgroundColor = UIColor.red
        } else {
            resultsLabel.text = "Grade needed on final exam to achieve your desired class grade..."
            view.backgroundColor = UIColor.green
        }
        
        resultsLabel.text = String(format:"%.1f", neededFinalExamGrade) + "%"
        
        //call alert controller function here
        
    }
    
    //function for alert controller goes here.
    

}


