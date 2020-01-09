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
    let cityName: String // Open Weather
    let conditionId: Int
//    let weatherIcon: String //represents condition in Dark Sky API
    let temperature: Double
//    let condition: String // Dark Sky API
    let timezone: Int
    
    // Present date in UILabel
    let currentDate = Date()
    let formatter = DateFormatter()
//    formatter.dateFormat = "LLLL d"
//    dateLabel.text = formatter.string(from: currentDate)
    
    // Present current time in UILabel
//    formatter.dateFormat = "hh:mm a"
//    timeLabel.text = formatter.string(from: currentDate)
    
    // Convert temperture to string for label 
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    // Convert time to string for label
//    var timeString: String {
//        return String(repeating: formatter.string(from: currentDate), count: timezone)
//    }

    // Dark 
//var ConditionName: String {
//     switch weatherIcon {
//     case "rain":
//         return "cloud.rain"
//     case "snow":
//         return "cloud.snow"
//     case "sleet":
//         return "cloud.sleet"
//     case "wind":
//         return "wind"
//     case "fog":
//         return "cloud.fog"
//     case "partly-cloudy-night":
//         return "cloud.moon"
//     case "partly-cloudy-day":
//         return "cloud.sun"
//     case "clear-day":
//         return "sun.max"
//     case "clear-night":
//         return "moon"
//     default:
//         return "cloud"
//     }
// }
    
    // Open
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }

}
