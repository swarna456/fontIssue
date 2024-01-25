//
//  TableViewCell.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.font = UIFont(name: AppFont.regular.name, size: 19)
        // Initialization code
    }
    
    func configure(title: String) {
        titleLabel.text = title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
