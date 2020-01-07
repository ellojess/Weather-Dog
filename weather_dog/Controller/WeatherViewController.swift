//
//  WeatherViewController.swift
//  weather_dog
//
//  Created by Bo on 11/12/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose any resources that can be recreated
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextField.text!)
    }
    
    // access delegate when return button is pressed by user 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    // validate what user is typing, make sure it's not an empty string
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        } else {
            textField.placeholder = "Type something here"
            return false
        }
    }
    
    // delegate notified when textfield is done editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        // use searchTextField.text to get the weather for that city 
        searchTextField.text = ""
    }
    
    @IBAction func checkBoxTapped(_ sender: UIButton) {
    }
    
    

}
