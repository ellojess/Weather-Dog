//
//  EntryDetailViewController.swift
//  weather_dog
//
//  Created by Bo on 1/9/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class EntryDetailViewController: UIViewController {
    
    var entry: Entry? {
        didSet {
            updateViews()
        }
    }
    var entryController: EntryController?
    
//    @IBOutlet weak var textField: UITextField!
//    @IBOutlet weak var textView: UITextView!
    
    
    
    @IBAction func save(_ sender: Any) {
        guard let title = textField.text,
            let bodyText = textView.text else { return }
        
        if let entry = entry {
            entryController?.update(entry: entry, title: title, bodyText: bodyText)
        } else {
            entryController?.create(title: title, bodyText: bodyText)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    func updateViews() {
        guard isViewLoaded else { return }
        
        title = entry?.title ?? "Create Entry"
        textField.text = entry?.title
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
}
