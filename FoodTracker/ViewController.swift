//
//  ViewController.swift
//  FoodTracker
//
//  Created by Rey Limosenero on 23/5/20.
//  Copyright © 2020 rlim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: PROPERTIES
    @IBOutlet weak var mealLabel: UILabel!
    @IBOutlet weak var mealText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealText.delegate = self
    }
    
    
    //MARK: ACTIONS
    @IBAction func buttonDidPressed(_ sender: UIButton) {
        mealLabel.text = "Default Text"
    }
    


}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealLabel.text = textField.text
    }
}

