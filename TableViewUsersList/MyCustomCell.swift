//
//  MyCustomCell.swift
//  TableViewUsersList
//
//  Created by Paola Pagotto on 28/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var customCellUser: UIView!
    
    @IBOutlet weak var labelUser: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var imageViewUser: UIImageView!
    
    
    func setup(title: String, email: String, image: String) {
        labelUser.text = title
        labelEmail.text = email
        imageViewUser.image = UIImage(named: image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
