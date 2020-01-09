//
//  Constants.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation

struct Constants {
    // Dark Sky
    static let apiKey = "93c9ccf24d15846ad9482aa3a59728d0"
    // "5f48b2583b60968733bba398d1c1b3a8" moi
    // request format: https://api.darksky.net/forecast/[key]/[latitude],[longitude]
    
    // Open Weather
    static let apiKey1 = "8719bc329041b7b1b49ddad7f3bd7959"
    // request format: https://api.openweathermap.org/data/2.5/weather?q={city name}
    // https://api.openweathermap.org/data/2.5/weather?appid={key}&q={city name}&units=imperial
}
