//
//  GithubRepoCellTableViewCell.swift
//  GithubDemo
//
//  Created by Gauri Tikekar on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class GithubRepoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    
    var githubRepo : GithubRepo! {
        didSet {
            descriptionLabel.text = githubRepo.repoDescription
            ownerLabel.text = githubRepo.ownerHandle
            forkCountLabel.text = "\(githubRepo.forks!)"
            starCountLabel.text = "\(githubRepo.stars!)"
            nameLabel.text = githubRepo.name
            if let imageUrl = URL(string : githubRepo.ownerAvatarURL!) {
                ownerImageView.setImageWith(imageUrl)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
