//
//  WeatherData.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

// Data obtained from Dark Sky Api 

import Foundation

struct WeatherData: Decodable {
    let name: String
    let currently: Currently
}

struct Currently: Decodable {
    let temperature: Double
    let summary: String
    let icon: String
}


