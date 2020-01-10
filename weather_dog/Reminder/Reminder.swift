//
//  Reminder.swift
//  weather_dog
//
//  Created by Bo on 1/6/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

//class Reminder: NSObject, NSCoding {
//    // Properties
//    var notification: UILocalNotification
//    var name: String
//    var time: NSDate
//
//    // Archive Paths for Persistent Data
//    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("reminders")
//
//    // enum for property types
//    struct PropertyKey {
//        static let nameKey = "name"
//        static let timeKey = "time"
//        static let notificationKey = "notification"
//    }
//
//    // Initializer
//    init(name: String, time: NSDate, notification: UILocalNotification) {
//        // set properties
//        self.name = name
//        self.time = time
//        self.notification = notification
//
//        super.init()
//    }
//
//    // Destructor
//    deinit {
//        // cancel notification
//        UIApplication.shared.cancelLocalNotification(self.notification)
//    }
//
//    // NSCoding
//
//    func encodeWithCoder(aCoder: NSCoder) {
//        aCoder.encode(name, forKey: PropertyKey.nameKey)
//        aCoder.encode(time, forKey: PropertyKey.timeKey)
//        aCoder.encode(notification, forKey: PropertyKey.notificationKey)
//    }
//
//    required convenience init(coder aDecoder: NSCoder) {
//        let name = aDecoder.decodeObject(forKey: PropertyKey.nameKey) as! String
//
//        // Because photo is an optional property of Meal, use conditional cast.
//        let time = aDecoder.decodeObject(forKey: PropertyKey.timeKey) as! NSDate
//
//        let notification = aDecoder.decodeObject(forKey: PropertyKey.notificationKey) as! UNNotificationRequest
//
//        // Must call designated initializer.
//        self.init(name: name, time: time, notification: notification)
//    }
//}


//class ReminderViewController: UIViewController{
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//
//}
//
//class ReminderViewCell: UITableViewCell{
//
//    @IBAction func checkBoxTapped(_ sender: UIButton) {
//
//        if sender.isSelected {
//            sender.isSelected = false
//        } else {
//            sender.isSelected = true
//        }
//    }
//
//
//
//}


