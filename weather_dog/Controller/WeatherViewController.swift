//
//  WeatherViewController.swift
//  weather_dog
//
//  Created by Bo on 11/12/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
        
//    var weatherManager = WeatherManager()
//    let locationManager = CLLocationManager()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        locationManager.delegate = self as? CLLocationManagerDelegate
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestLocation()
//
//        weatherManager.delegate = self // set current class as delegate so that weatherManager.delegate property != nil
//        searchTextField.delegate = self
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose any resources that can be recreated
//    }
//
//    @IBAction func searchPressed(_ sender: UIButton) {
//        searchTextField.endEditing(true)
//    }
//
//    // access delegate when return button is pressed by user
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        searchTextField.endEditing(true)
////        print(searchTextField.text!)
//        return true
//    }
//
//    // validate what user is typing, make sure it's not an empty string
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if textField.text != ""{
//            return true
//        } else {
//            textField.placeholder = "Type something here"
//            return false
//        }
//    }
//
//    // delegate notified when textfield is done editing
//    func textFieldDidEndEditing(_ textField: UITextField) {
//
//        if let city = searchTextField.text {
//            weatherManager.fetchWeather(cityName: city)
//        }
//
//        // use searchTextField.text to get the weather for that city
//        searchTextField.text = ""
//    }
//
//    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
//        // print(weather.temperature)
//
//        DispatchQueue.main.async {
//            // Update temperature label in UI
//            self.temperatureLabel.text = weather.temperatureString
//            // Update icon image in UI
//            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
//            // Update city name label in UI
//            self.cityLabel.text = weather.cityName
//        }
//
//    }
//
//    func didFailWithError(error: Error){
//        print(error)
//    }
//
//
//extension Weather
//
//}

    var weatherManager = WeatherManager()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        weatherManager.delegate = self
        searchTextField.delegate = self
    }

}

//MARK: - UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate {
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        
        searchTextField.text = ""
        
    }
}

//MARK: - WeatherManagerDelegate


extension WeatherViewController: WeatherManagerDelegate {
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
            self.cityLabel.text = weather.cityName
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

//MARK: - CLLocationManagerDelegate


extension WeatherViewController: CLLocationManagerDelegate {
    
    @IBAction func locationPressed(_ sender: UIButton) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
