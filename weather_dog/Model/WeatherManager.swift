//
//  WeatherManager.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import CoreLocation

// delegate to update weather 
protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

// fetch weather data from APIs (Open weather and Dark Sky) 
struct WeatherManager{
    let weatherURLDark = "https://api.darksky.net/forecast/\(Constants.apiKey)/"
    let weatherURLOpen = "https://api.openweathermap.org/data/2.5/weather?appid=\(Constants.apiKey1)&units=imperial"
    
    //SF Coordinates 37.773972,-122.4194 for Dark Sky
    
    var delegate: WeatherManagerDelegate? 
    
    func fetchWeather(cityName: String){
        
        // Create URL
        let urlString = "\(weatherURLOpen)&q=\(cityName)"
        performRequest(with: urlString)
        print(urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let urlString = "\(weatherURLOpen)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String){
        if let url = URL(string: urlString) {
            
            // Create URLSession
            let session = URLSession(configuration: .default)
            
            // Give session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    // print(error!)
                    return
                }
                // if no errors, see data
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            
            // Start task
            task.resume()
        }
    }

    // Convert JSON to Swift
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            let time = decodedData.timezone
//
//            let temperature = decodedData.currently.temperature // JSON path for temp from Dark Sky
//            let condition = decodedData.currently.summary
//            let weatherIcon = decodedData.currently.icon
    
//            let weather = WeatherModel(weatherIcon: weatherIcon, temperature: temperature, condition: condition)
//            // print(weather.ConditionName)
//            return weather
            
            let weather = WeatherModel(cityName: name, conditionId: id, temperature: temp, timezone: time)
            return weather
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
 

    
}
