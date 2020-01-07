//
//  Reminder.swift
//  weather_dog
//
//  Created by Bo on 1/6/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class Reminder: NSObject {

    var notification: UNNotificationRequest
    var name: String
    var time: NSDate
    
    // Archive paths for Persistent Data when saving a reminder
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("reminders")
    
    // enum for property keys
    enum PropertyKey {
        case name, time, notification
    }
    
    init(name: String, time: NSDate, notification: UNNotificationRequest){
        self.name = name
        self.time = time
        self.notification = notification
        
        super.init()
    }

}
