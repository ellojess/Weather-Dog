//
//  LocationManager.swift
//  weather_dog
//
//  Created by Bo on 1/7/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

// This file converts geo location to city name

//import Foundation
//import CoreLocation
//
//class LocationManager: NSObject {
//    
//    private let locationManager = CLLocationManager()
//    
//    override init() {
//        super.init()
//        self.locationManager.delegate = (self as CLLocationManagerDelegate)
//        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        self.locationManager.requestWhenInUseAuthorization()
//    }
//}
//
//// MARK: - Core Location Delegate
//extension LocationManager: CLLocationManagerDelegate {
//    
//    
//    func locationManager(_ manager: CLLocationManager,
//                         didChangeAuthorization status: CLAuthorizationStatus) {
//
//        switch status {
//    
//        case .notDetermined         : print("notDetermined")        // location permission not asked for yet
//        case .authorizedWhenInUse   : print("authorizedWhenInUse")  // location authorized
//        case .authorizedAlways      : print("authorizedAlways")     // location authorized
//        case .restricted            : print("restricted")           // TODO: handle
//        case .denied                : print("denied")               // TODO: handle
//        }
//    }
//}

