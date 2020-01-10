//
//  EntryTableViewCell.swift
//  weather_dog
//
//  Created by Bo on 1/9/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    var entry: Entry? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews() {
        guard let entry = entry else { return }
        
        titleLabel.text = entry.title
        bodyTextLabel.text = entry.bodyText
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
