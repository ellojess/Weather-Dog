//
//  WeatherViewController.swift
//  weather_dog
//
//  Created by Bo on 11/12/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate, WeatherManagerDelegate {
    func didFailWithError(error: Error) {
        print(error)
    }
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
        
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherManager.delegate = self // set current class as delegate so that weatherManager.delegate property != nil
        searchTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose any resources that can be recreated
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    // access delegate when return button is pressed by user 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
//        print(searchTextField.text!)
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
        
//        if let city = searchTextField.text {
//            WeatherManager.fetchWeather((latitude: latitude, longitude: longitude))
//        }
        
        // use searchTextField.text to get the weather for that city 
        searchTextField.text = ""
    }
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        print(weather.temperature)
    }

}
