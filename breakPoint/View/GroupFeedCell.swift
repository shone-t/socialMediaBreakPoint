//
//  GroupFeedCell.swift
//  breakPoint
//
//  Created by MacBook Pro on 8/2/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profielImage: UIImage, email: String, content: String){
        self.profileImage.image = profielImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
}
