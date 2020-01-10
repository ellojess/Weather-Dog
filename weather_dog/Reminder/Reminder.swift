//
//  Reminder.swift
//  weather_dog
//
//  Created by Bo on 1/6/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class Reminder: UITableViewController {
    
    let titles = ["1","2"]
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("Loading tableview")
                tableView.delegate = self
            tableView.dataSource = self
                   tableView.reloadData()
           
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
           print("Loading tableview")
                      tableView.delegate = self
            tableView.dataSource = self
                         tableView.reloadData()
            
    }
    
    
}

extension Reminder {
    //let entryController = EntryController()
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EntryCell", for: indexPath) as! EntryTableViewCell

        cell.titleLabel.text = ""

        return cell
    }


    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            let entry = entryController.entries[indexPath.row]
//            entryController.delete(entry: entry)
//            tableView.reloadData()
//        }
    }

    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailVC = segue.destination as? EntryDetailViewController else { return }
//        detailVC.entryController = entryController
//
//        if segue.identifier == "ViewExistingEntry" {
//            guard let indexPath = tableView.indexPathForSelectedRow else { return }
//            let entry = entryController.entries[indexPath.row]
//            detailVC.entry = entry
//        }
//    }

}

//class Reminder: UITableViewController {
//    let entryController = EntryController()
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        tableView.reloadData()
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//}
//
//    // MARK: - Table view data source
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return entryController.entries.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "EntryCell", for: indexPath) as! EntryTableViewCell
//
//        let entry = entryController.entries[indexPath.row]
//        cell.entry = entry
//
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            let entry = entryController.entries[indexPath.row]
//            entryController.delete(entry: entry)
//            tableView.reloadData()
//        }
//    }
//
//    // MARK: - Navigation
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailVC = segue.destination as? EntryDetailViewController else { return }
//        detailVC.entryController = entryController
//
//        if segue.identifier == "ViewExistingEntry" {
//            guard let indexPath = tableView.indexPathForSelectedRow else { return }
//            let entry = entryController.entries[indexPath.row]
//            detailVC.entry = entry
//        }
//    }
//
//}

// -----------


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


