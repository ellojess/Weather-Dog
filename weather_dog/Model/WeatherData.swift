//
//  WeatherData.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

// Data obtained from Dark Sky Api 

import Foundation

struct WeatherData: Codable {
    let name: String
//    let currently: Currently // Dark Sky
    let main: Main // Open Weather
    let weather: [Weather]
}

//struct Currently: Codable {
//    let temperature: Double
//    let summary: String
//    let icon: String
//}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
