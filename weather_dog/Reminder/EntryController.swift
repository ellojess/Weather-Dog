//
//  EntryController.swift
//  weather_dog
//
//  Created by Bo on 1/9/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    let moc = CoreDataStack.shared.mainContext
    
    var entries: [Entry] {
        return loadFromPersistentStore()
    }
    
    func saveToPersistentStore() {
        do {
            try moc.save()
        }
        catch {
            NSLog("Error saving managed object context: \(error)")
        }
    }
    
    func loadFromPersistentStore() -> [Entry] {
        let fetchRequest: NSFetchRequest<Entry> = Entry.fetchRequest()
        
        do {
            return try moc.fetch(fetchRequest)
        }
        catch {
            NSLog("There was an error while trying to get your entry array.")
            return []
        }
    }
    
    // MARK: - CRUD methods
    
    func create(title: String) {
        let _ = Entry(entity: title, insertInto: title)
        saveToPersistentStore()
    }
    
    func update(entry: Entry, title: String) {
        entry.title = title
        
        saveToPersistentStore()
    }
    
    func delete(entry: Entry) {
        moc.delete(entry)
        saveToPersistentStore()
    }
    
}

