//
//  GroupCell.swift
//  breakPoint
//
//  Created by MacBook Pro on 8/2/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var gropuDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int){
        self.gropuDescLbl.text = description
        self.groupTitleLbl.text = title
        self.memberCountLbl.text = "\(memberCount) members"
    }
    
}
