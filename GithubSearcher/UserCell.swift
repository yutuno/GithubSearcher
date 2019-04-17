//
//  UserCell.swift
//  GithubSearcher
//
//  Created by yuto on 2019/04/18.
//  Copyright © 2019 yuto. All rights reserved.
//

import UIKit

class UserCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .yellow
        
        iconImageView.image = UIImage(named: "yutuno")
        nameLabel.text = "sample"
    }
}
