//
//  BoardCell.swift
//  SogangUniv
//
//  Created by Daniel Lee on 2023/02/09.
//

import UIKit

class BoardCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var numberOfLikes: UILabel!
    @IBOutlet weak var numberOfComments: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
