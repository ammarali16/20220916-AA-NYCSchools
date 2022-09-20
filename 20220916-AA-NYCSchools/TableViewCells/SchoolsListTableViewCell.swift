//
//  SchoolsListTableViewCell.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import UIKit

class SchoolsListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblSchoolName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
