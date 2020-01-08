//
//  WeatherModel.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

// File for custom data type, model what weather object should look like

import Foundation

struct WeatherModel {
    let weatherIcon: String //represents condition in Dark Sky API
//    let cityName: String      //TODO: for Open Weather 
    let temperature: Double
    let condition: String
    
    // Convert temperture to string for label 
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

var ConditionName: String {
     switch weatherIcon {
     case "rain":
         return "cloud.rain"
     case "snow":
         return "cloud.snow"
     case "sleet":
         return "cloud.sleet"
     case "wind":
         return "wind"
     case "fog":
         return "cloud.fog"
     case "partly-cloudy-night":
         return "cloud.moon"
     case "partly-cloudy-day":
         return "cloud.sun"
     case "clear-day":
         return "sun.max"
     case "clear-night":
         return "moon"
     default:
         return "cloud"
     }
 }

}
