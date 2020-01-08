//
//  WeatherManager.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation

// delegate to update weather 
protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager{
    let weatherURL = "https://api.darksky.net/forecast/\(Constants.apiKey)/"
    
    //SF Coordinates 37.773972,-122.4194
    
    var delegate: WeatherManagerDelegate? 
    
    func fetchWeather(latitude: Double, longitude: Double){
        
        // Create URL
        let urlString = "\(weatherURL)\(latitude),\(longitude)"
        performRequestion(with: urlString)
    }
    
    func performRequestion(with urlString: String){
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
            let temperature = decodedData.currently.temperature // JSON path for temp from Dark Sky
            let condition = decodedData.currently.summary
            let weatherIcon = decodedData.currently.icon
            
            let weather = WeatherModel(weatherIcon: weatherIcon, temperature: temperature, condition: condition)
            // print(weather.ConditionName)
            return weather
            
        } catch {
            //print(error)
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
 

    
}
