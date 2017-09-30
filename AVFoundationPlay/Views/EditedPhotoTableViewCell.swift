//
//  EditedPhotoTableViewCell.swift
//  AVFoundationPlay
//
//  Created by Thomas Ganley on 9/30/17.
//  Copyright © 2017 Thomas Ganley. All rights reserved.
//

import UIKit

class EditedPhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var editedPhotoImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
