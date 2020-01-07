//
//  WeatherManager.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation

struct WeatherManager{
    let weatherURL = "https://api.darksky.net/forecast/\(Constants.apiKey)/"
    
    //SF Coordinates 37.773972,-122.4194
    
    func fetchWeather(latitude: Double, longitude: Double){
        let urlString = "\(weatherURL)\(latitude),\(longitude)"
    }
    
}
